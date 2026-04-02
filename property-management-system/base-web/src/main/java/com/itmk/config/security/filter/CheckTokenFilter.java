package com.itmk.config.security.filter;

import com.itmk.config.jwt.JwtUtils;
import com.itmk.config.security.customerdetailservice.CustometUserDetailService;
import com.itmk.config.security.exception.TokenException;
import com.itmk.config.security.handler.LoginFailureHandler;
import io.jsonwebtoken.Claims;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

@Component("checkTokenFilter")
public class CheckTokenFilter extends OncePerRequestFilter {

    @Value("${itmk.loginUrl}")
    private String loginUrl;

    @Autowired
    private JwtUtils jwtUtils;

    @Autowired
    private CustometUserDetailService custometUserDetailService;

    @Autowired
    private LoginFailureHandler loginFailureHandler;

    @Override
    protected void doFilterInternal(HttpServletRequest request,
                                    HttpServletResponse response,
                                    FilterChain filterChain) throws ServletException, IOException {
        try {
            // 放行不需要 token 校验的请求
            if (!shouldSkipTokenValidation(request)) {
                tokenValidate(request);
            }
        } catch (AuthenticationException e) {
            loginFailureHandler.commence(request, response, e);
            return;
        } catch (Exception e) {
            // 兜底，避免非 AuthenticationException 导致前端拿不到正确响应
            loginFailureHandler.commence(request, response, new TokenException(e.getMessage()));
            return;
        }

        filterChain.doFilter(request, response);
    }

    /**
     * 是否跳过 token 校验
     */
    private boolean shouldSkipTokenValidation(HttpServletRequest request) {
        // 1. 放行 OPTIONS 预检请求
        if ("OPTIONS".equalsIgnoreCase(request.getMethod())) {
            return true;
        }

        String requestUri = normalizePath(request.getRequestURI());
        String configuredLoginUrl = normalizePath(loginUrl);
        String contextPath = normalizePath(request.getContextPath());

        // 2. 完全匹配 loginUrl
        if (Objects.equals(requestUri, configuredLoginUrl)) {
            return true;
        }

        // 3. 兼容 context-path，比如 /dev-api/user/login
        if (StringUtils.isNotEmpty(contextPath)
                && Objects.equals(requestUri, normalizePath(contextPath + configuredLoginUrl))) {
            return true;
        }

        // 4. 兼容末尾匹配
        if (requestUri.endsWith(configuredLoginUrl)) {
            return true;
        }

        return false;
    }

    /**
     * 统一规范路径格式
     */
    private String normalizePath(String path) {
        if (StringUtils.isEmpty(path)) {
            return "";
        }
        String normalized = path.trim();
        if (!normalized.startsWith("/")) {
            normalized = "/" + normalized;
        }
        while (normalized.length() > 1 && normalized.endsWith("/")) {
            normalized = normalized.substring(0, normalized.length() - 1);
        }
        return normalized;
    }

    /**
     * token 校验
     */
    private void tokenValidate(HttpServletRequest request) {
        String token = request.getHeader("token");
        if (StringUtils.isEmpty(token)) {
            token = request.getParameter("token");
        }

        if (StringUtils.isEmpty(token)) {
            throw new TokenException("token获取失败!");
        }

        String username = jwtUtils.getUsernameFromToken(token);
        if (StringUtils.isEmpty(username)) {
            throw new TokenException("token验证失败!");
        }

        Claims claims = jwtUtils.getClaimsFromToken(token);
        if (claims == null) {
            throw new TokenException("token验证失败!");
        }

        Object userTypeObj = claims.get("userType");
        if (userTypeObj == null || StringUtils.isEmpty(String.valueOf(userTypeObj))) {
            throw new TokenException("用户类型不能为空!");
        }

        String userType = String.valueOf(userTypeObj);
        UserDetails details = custometUserDetailService.loadUserByUsername(username + ":" + userType);

        if (details == null) {
            throw new TokenException("用户信息不存在!");
        }

        UsernamePasswordAuthenticationToken authenticationToken =
                new UsernamePasswordAuthenticationToken(details, null, details.getAuthorities());
        authenticationToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
        SecurityContextHolder.getContext().setAuthentication(authenticationToken);
    }
}
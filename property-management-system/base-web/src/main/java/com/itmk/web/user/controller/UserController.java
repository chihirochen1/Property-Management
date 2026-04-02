package com.itmk.web.user.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.itmk.config.jwt.JwtUtils;
import com.itmk.utils.ResultUtils;
import com.itmk.utils.ResultVo;
import com.itmk.web.live_user.entity.LiveUser;
import com.itmk.web.live_user.service.LiveUserService;
import com.itmk.web.menu.entity.MakeMenuTree;
import com.itmk.web.menu.entity.Menu;
import com.itmk.web.menu.entity.RouterVO;
import com.itmk.web.menu.service.MenuService;
import com.itmk.web.user.entity.*;
import com.itmk.web.user.service.UserService;
import com.itmk.web.user_role.entity.UserRole;
import io.jsonwebtoken.Claims;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 员工管理的控制器
 */
@RestController
@RequestMapping("/api/user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private JwtUtils jwtUtils;

    @Resource
    private AuthenticationManager authenticationManager;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private MenuService menuService;

    @Autowired
    private LiveUserService liveUserService;

    /**
     * 重置密码
     */
    @PostMapping("/resetPassword")
    public ResultVo resetPassword(@RequestBody ChangePassword user, HttpServletRequest request) {
        String token = request.getHeader("token");
        Claims claims = jwtUtils.getClaimsFromToken(token);
        Object userType = claims.get("userType");

        if (userType.equals("0")) { // 0：业主
            LiveUser liveUser = liveUserService.getById(user.getUserId());
            if (liveUser == null) {
                return ResultUtils.error("用户不存在!");
            }

            String dataOldPassword = liveUser.getPassword();
            boolean encode = passwordEncoder.matches(user.getOldPassword(), dataOldPassword);
            if (!encode) {
                return ResultUtils.error("旧密码错误!");
            }

            LiveUser liveUser1 = new LiveUser();
            liveUser1.setUserId(user.getUserId());
            liveUser1.setPassword(passwordEncoder.encode(user.getNewPassword()));
            boolean b = liveUserService.updateById(liveUser1);
            if (b) {
                return ResultUtils.success("密码修改成功!");
            }
            return ResultUtils.error("密码修改失败!");
        } else {
            User dbUser = userService.getById(user.getUserId());
            if (dbUser == null) {
                return ResultUtils.error("用户不存在!");
            }

            String dataOldPassword = dbUser.getPassword();
            boolean encode = passwordEncoder.matches(user.getOldPassword(), dataOldPassword);
            if (!encode) {
                return ResultUtils.error("旧密码错误!");
            }

            User updateUser = new User();
            updateUser.setUserId(user.getUserId());
            updateUser.setPassword(passwordEncoder.encode(user.getNewPassword()));
            boolean b = userService.updateById(updateUser);
            if (b) {
                return ResultUtils.success("密码修改成功!");
            }
            return ResultUtils.error("密码修改失败!");
        }
    }

    /**
     * 退出登录
     */
    @PostMapping("/loginOut")
    public ResultVo loginOut(HttpServletRequest request, HttpServletResponse response) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null) {
            new SecurityContextLogoutHandler().logout(request, response, authentication);
        }
        return ResultUtils.success("退出登录成功!");
    }

    /**
     * 获取菜单列表
     */
    @GetMapping("/getMenuList")
    public ResultVo getMenuList(HttpServletRequest request) {
        String token = request.getHeader("token");
        String username = jwtUtils.getUsernameFromToken(token);
        Claims claims = jwtUtils.getClaimsFromToken(token);
        Object userType = claims.get("userType");

        if (userType.equals("0")) { // 0：业主
            LiveUser liveUser = liveUserService.loadUser(username);
            List<Menu> menuList = menuService.getMenuByUserIdForLiveUser(liveUser.getUserId());
            List<Menu> collect = menuList.stream()
                    .filter(item -> item != null && !item.getType().equals("2"))
                    .collect(Collectors.toList());
            List<RouterVO> routerVOS = MakeMenuTree.makeRouter(collect, 0L);
            return ResultUtils.success("查询成功", routerVOS);
        } else {
            User dbUser = userService.loadUser(username);
            List<Menu> menuList = menuService.getMenuByUserId(dbUser.getUserId());
            List<Menu> collect = menuList.stream()
                    .filter(item -> item != null && !item.getType().equals("2"))
                    .collect(Collectors.toList());
            List<RouterVO> routerVOS = MakeMenuTree.makeRouter(collect, 0L);
            return ResultUtils.success("查询成功", routerVOS);
        }
    }

    /**
     * 根据用户id获取用户信息
     */
    @GetMapping("/getInfo")
    public ResultVo getInfo(User user, HttpServletRequest request) {
        String token = request.getHeader("token");
        Claims claims = jwtUtils.getClaimsFromToken(token);
        Object userType = claims.get("userType");

        if (userType.equals("0")) { // 0：业主
            LiveUser liveUser = liveUserService.getById(user.getUserId());
            if (liveUser == null) {
                return ResultUtils.error("用户不存在!");
            }

            UserInfo userInfo = new UserInfo();
            userInfo.setId(liveUser.getUserId());
            userInfo.setName(liveUser.getUsername());
            userInfo.setAvatar("https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif");

            List<Menu> menuList = menuService.getMenuByUserIdForLiveUser(liveUser.getUserId());
            List<String> collect = menuList.stream()
                    .filter(item -> item != null)
                    .map(Menu::getMenuCode)
                    .filter(item -> item != null)
                    .collect(Collectors.toList());
            String[] strings = collect.toArray(new String[0]);
            userInfo.setRoles(strings);
            return ResultUtils.success("获取用户信息成功", userInfo);
        } else {
            User user1 = userService.getById(user.getUserId());
            if (user1 == null) {
                return ResultUtils.error("用户不存在!");
            }

            UserInfo userInfo = new UserInfo();
            userInfo.setId(user1.getUserId());
            userInfo.setName(user1.getUsername());
            userInfo.setAvatar("https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif");

            List<Menu> menuList = menuService.getMenuByUserId(user.getUserId());
            List<String> collect = menuList.stream()
                    .filter(item -> item != null)
                    .map(Menu::getMenuCode)
                    .filter(item -> item != null)
                    .collect(Collectors.toList());
            String[] strings = collect.toArray(new String[0]);
            userInfo.setRoles(strings);
            return ResultUtils.success("获取用户信息成功", userInfo);
        }
    }

    /**
     * 用户登录
     * 实际登录接口：/api/user/login
     */
    @PostMapping("/login")
    public ResultVo login(@RequestBody LoginParm parm) {
        if (parm == null
                || StringUtils.isEmpty(parm.getUsername())
                || StringUtils.isEmpty(parm.getPassword())
                || StringUtils.isEmpty(parm.getUserType())) {
            return ResultUtils.error("用户名、密码或用户类型不能为空!");
        }

        try {
            UsernamePasswordAuthenticationToken authenticationToken =
                    new UsernamePasswordAuthenticationToken(
                            parm.getUsername() + ":" + parm.getUserType(),
                            parm.getPassword()
                    );

            Authentication authenticate = authenticationManager.authenticate(authenticationToken);
            SecurityContextHolder.getContext().setAuthentication(authenticate);

            String token = jwtUtils.generateToken(parm.getUsername(), parm.getUserType());
            Long time = jwtUtils.getExpireTime(token);

            LoginResult result = new LoginResult();

            if (parm.getUserType().equals("0")) {
                LiveUser user = (LiveUser) authenticate.getPrincipal();
                result.setUserId(user.getUserId());
            } else {
                User user = (User) authenticate.getPrincipal();
                result.setUserId(user.getUserId());
            }

            result.setToken(token);
            result.setExpireTime(time);

            return ResultUtils.success("登录成功", result);
        } catch (BadCredentialsException e) {
            return ResultUtils.error("用户名或密码错误!");
        } catch (AuthenticationException e) {
            return ResultUtils.error("登录认证失败!");
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtils.error("登录失败:" + e.getMessage());
        }
    }

    /**
     * 新增员工
     */
    @PostMapping
    @PreAuthorize("hasAuthority('sys:user:add')")
    public ResultVo addUser(@RequestBody User user) {
        if (StringUtils.isNotEmpty(user.getUsername())) {
            QueryWrapper<User> query = new QueryWrapper<>();
            query.lambda().eq(User::getUsername, user.getUsername());
            User one = userService.getOne(query);
            if (one != null) {
                return ResultUtils.error("登录名已经被占用!", 500);
            }
        }

        if (StringUtils.isNotEmpty(user.getPassword())) {
            user.setPassword(passwordEncoder.encode(user.getPassword()));
        }

        boolean save = userService.save(user);
        if (save) {
            return ResultUtils.success("新增员工成功");
        }
        return ResultUtils.error("新增员工失败");
    }

    /**
     * 编辑员工
     */
    @PreAuthorize("hasAuthority('sys:user:edit')")
    @PutMapping
    public ResultVo editUser(@RequestBody User user) {
        if (StringUtils.isNotEmpty(user.getUsername())) {
            QueryWrapper<User> query = new QueryWrapper<>();
            query.lambda().eq(User::getUsername, user.getUsername());
            User one = userService.getOne(query);
            if (one != null && one.getUserId() != user.getUserId()) {
                return ResultUtils.error("登录名已经被占用!", 500);
            }
        }

        if (StringUtils.isNotEmpty(user.getPassword())) {
            user.setPassword(passwordEncoder.encode(user.getPassword()));
        }

        boolean b = userService.updateById(user);
        if (b) {
            return ResultUtils.success("编辑员工成功");
        }
        return ResultUtils.error("编辑员工失败");
    }

    /**
     * 删除员工
     */
    @PreAuthorize("hasAuthority('sys:user:delete')")
    @DeleteMapping("/{userId}")
    public ResultVo deleteUser(@PathVariable("userId") Long userId) {
        boolean b = userService.removeById(userId);
        if (b) {
            return ResultUtils.success("删除员工成功");
        }
        return ResultUtils.error("删除员工失败");
    }

    /**
     * 查询员工列表
     */
    @GetMapping("/list")
    public ResultVo list(UserParm parm) {
        IPage<User> list = userService.list(parm);
        list.getRecords().forEach(item -> item.setPassword(""));
        return ResultUtils.success("查询成功", list);
    }

    /**
     * 根据用户id查询角色
     */
    @GetMapping("/getRoleByUserId")
    public ResultVo getRoleByUserId(UserRole userRole) {
        UserRole userRole1 = userService.getRoleByUserId(userRole);
        return ResultUtils.success("查询成功", userRole1);
    }

    /**
     * 保存用户角色
     */
    @PostMapping("/saveRole")
    public ResultVo saveRole(@RequestBody UserRole userRole) {
        userService.saveRole(userRole);
        return ResultUtils.success("分配角色成功!");
    }
}
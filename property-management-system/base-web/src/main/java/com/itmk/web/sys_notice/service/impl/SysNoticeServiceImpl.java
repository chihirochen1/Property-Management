package com.itmk.web.sys_notice.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itmk.web.house_building.entity.HouseBuilding;
import com.itmk.web.sys_notice.entity.SysNotice;
import com.itmk.web.sys_notice.entity.SysNoticeParm;
import com.itmk.web.sys_notice.mapper.SysNoticeMapper;
import com.itmk.web.sys_notice.service.SysNoticeService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

@Service
public class SysNoticeServiceImpl extends ServiceImpl<SysNoticeMapper, SysNotice> implements SysNoticeService {

    @Override
    public SysNotice getOne() {
        //构造查询条件
        QueryWrapper<SysNotice> query = new QueryWrapper<>();
        query.orderByDesc("create_time");
        return this.baseMapper.getOne(query);

    }
}

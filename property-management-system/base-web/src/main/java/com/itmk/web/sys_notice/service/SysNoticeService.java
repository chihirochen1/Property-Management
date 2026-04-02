package com.itmk.web.sys_notice.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.itmk.web.house_building.entity.HouseBuilding;
import com.itmk.web.house_building.entity.HouseBuildingParm;
import com.itmk.web.sys_notice.entity.SysNotice;
import com.itmk.web.sys_notice.entity.SysNoticeParm;
import org.apache.commons.lang.StringUtils;

public interface SysNoticeService extends IService<SysNotice> {


    SysNotice getOne();
}

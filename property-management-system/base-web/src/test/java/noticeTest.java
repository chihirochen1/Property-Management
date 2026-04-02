import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.itmk.PropertyManagementApplication;
import com.itmk.web.sys_notice.controller.SysNoticeController;
import com.itmk.web.sys_notice.entity.SysNotice;
import com.itmk.web.sys_notice.service.SysNoticeService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


@SpringBootTest(classes = PropertyManagementApplication.class)
public class noticeTest {

    @Autowired
    SysNoticeController sysNoticeController;
    @Autowired
    SysNoticeService sysNoticeService;

    @Test
    public void t(){
        //构造查询条件
        QueryWrapper<SysNotice> query = new QueryWrapper<>();
        query.lambda().like(SysNotice::getTitle,"小区停电通知")
                .orderByDesc(SysNotice::getCreateTime);
        //构造分页对象
        IPage<SysNotice> page = new Page<>();
        page.setCurrent(1);
        page.setSize(1);
        IPage<SysNotice> list = sysNoticeService.page(page, query);
        System.out.println("-------------------------------------------------查询公告");
        if (list.getRecords()== null){
            System.out.println("--------------------null");
        }
        for (SysNotice notice : list.getRecords()) {
            System.out.println("标题：" + notice.getTitle());
            System.out.println("内容：" + notice.getCreateTime());
            // 输出其他字段信息
            System.out.println("--------------------------------------------");
        }


    }
}

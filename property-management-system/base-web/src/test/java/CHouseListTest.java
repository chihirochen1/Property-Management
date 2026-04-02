import com.itmk.PropertyManagementApplication;
import com.itmk.web.house_list.entity.HouseList;
import com.itmk.web.house_list.service.HouseListService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;


@ContextConfiguration
@SpringBootTest(classes = PropertyManagementApplication.class)
public class CHouseListTest {


    @Autowired
    HouseListService houseListService;

    @Test
    public void HouseListTest() {
        /*
        HouseList(
                houseId=null,       自增
                buildId=1,          楼栋Id 自动绑定
                 name=null,          房屋主人名 自动绑定
                unitName=null,      单元名   自动绑定

                unitId=3,           单元id
                houseNum=401,       房屋号
                houseArea=100,      房屋面积
                status=0)           使用状态
                */
        for (long i = 1; i <= 12; i++) {             //单元
            for (int k = 1; k <= 11; k++) {          //楼层
                for (int m = 1; m <= 2; m++) {       //房号

                    HouseList houseList = new HouseList();

                    houseList.setUnitId(i);     //单元
                    houseList.setHouseNum(k+"0"+m);//房间号

                    houseList.setHouseArea("100");//面积
                    houseList.setStatus("0");//使用状态
                    System.out.println(houseList);
//                    houseListService.save(houseList);
                }
            }
        }
    }


}



import com.itmk.PropertyManagementApplication;
import com.itmk.web.house_building.entity.HouseBuilding;
import com.itmk.web.house_building.service.HouseBuildingService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;

@ContextConfiguration
@SpringBootTest(classes = PropertyManagementApplication.class)
public class AHouseBuildingTest {


    //    BuildingID   自增
//    ordernun      序号
//    type          类型：电梯：1  普通：0
//    name          房屋名
    @Autowired
    HouseBuildingService hs;



    @Test
    public void HBTest() {

        long on = 0;
        for (int i = 0; i < 6; i++) {
                    HouseBuilding houseBuilding = new HouseBuilding();
                    houseBuilding.setOrderNum(++on);
                    System.out.println(on);
                    if (on > 4)
                        houseBuilding.setType("1");
                    else
                        houseBuilding.setType("0");
                    houseBuilding.setName(selectName(i));
                    System.out.println(houseBuilding.toString());
                    //hs.save(houseBuilding);

        }
    }


    public String selectName(int i) {
        if (i == 0)
            return "一栋";
        else if (i == 1)
            return "二栋";
        else if (i == 2)
            return "三栋";
        else if (i == 3)
            return "四栋";
        else if (i == 4)
            return "五栋";
        else if (i == 5)
            return "六栋";
        return "";
    }
}

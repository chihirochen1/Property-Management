import com.itmk.PropertyManagementApplication;
import com.itmk.web.house_unit.entity.HouseUnit;
import com.itmk.web.house_unit.service.HouseUnitService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


@SpringBootTest(classes = PropertyManagementApplication.class)
public class BHouseUnitTest {


    @Autowired
    HouseUnitService houseUnitService;

    @Test
    public void t(){
        /*
        unit_id     单元id自增
        build_id    楼栋id
        unit_name   单元名
         */
        for(long i =0;i<6;i++){
            for(int j=0;j<2;j++){
                HouseUnit houseUnit= new HouseUnit();
                houseUnit.setBuildId(i+1);
                if(j==0)
                    houseUnit.setUnitName("一单元");
                else
                    houseUnit.setUnitName("二单元");
                System.out.println(houseUnit.toString());
                //houseUnitService.save(houseUnit);
            }
        }

    }

}

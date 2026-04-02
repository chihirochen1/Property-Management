import com.itmk.PropertyManagementApplication;
import com.itmk.web.park_list.entity.ParkList;
import com.itmk.web.park_list.service.ParkListService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest(classes = PropertyManagementApplication.class)
public class EParkListTest {

    @Autowired
    ParkListService parkListService;

    @Test
    public void t() {
        String[] la = {"A", "B", "C", "D", "E"};
        for (int i = 0; i < 5; i++) {
            for (int j = 1; j < 11; j++) {
                ParkList parkList = new ParkList();
                if (j < 10)
                    parkList.setParkName(la[i] + "0" + j);
                else
                    parkList.setParkName(la[i] + j);
                if (i < 2)
                    parkList.setParkType("0");
                else
                    parkList.setParkType("1");
                parkList.setParkStatus("0");

                System.out.println(parkList);
//                parkListService.save(parkList);
            }
        }
    }
}


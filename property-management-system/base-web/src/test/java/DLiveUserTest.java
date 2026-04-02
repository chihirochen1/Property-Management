import com.itmk.PropertyManagementApplication;
import com.itmk.web.live_user.entity.LiveUser;
import com.itmk.web.live_user.service.LiveUserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;


import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import java.util.Random;

@SpringBootTest(classes = PropertyManagementApplication.class)
public class DLiveUserTest {

    @Autowired
    LiveUserService liveUserService;

    @Autowired
    private PasswordEncoder passwordEncoder;


    @Test
    public void t() {
        //创建业主数据 *50
        try {
            List<String> lines = Files.readAllLines(Paths.get("E:\\projectManagement\\property-management-system\\base-web\\src\\main\\resources\\live_user_list.txt"));
            for (String line : lines) {
                LiveUser liveUser = new LiveUser();

                liveUser.setUsername(line.split(" ")[1]);
                liveUser.setPhone(getPhoneNum());
                liveUser.setSex(selectSex());
                liveUser.setLoginName(line.split(" ")[0]);
                liveUser.setPassword(passwordEncoder.encode("123"));
                liveUser.setStatus("0");
                liveUser.setRoleId(8L);
                liveUser.setAccountNonExpired(true);
                liveUser.setAccountNonLocked(true);
                liveUser.setCredentialsNonExpired(true);
                liveUser.setEnabled(true);

//                liveUserService.saveLiveUser(liveUser);
                System.out.println(liveUser);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

    private String getPhoneNum() {

        Random random = new Random();

        // 第一个数字固定为1
        int firstDigit = 1;

        // 生成第二位和第三位数字

        String[] Prefix = {"134", "135", "136", "137", "138", "139", "150", "151", "152", "157", "158", "159", "178", "182", "183", "184", "187", "188", "130", "131", "132", "145", "155", "156", "166", "175", "176", "185", "186", "133", "149", "153", "173", "177", "180", "181", "189", "199"};
        String pre = "";

        int preDigit = random.nextInt(Prefix.length);
        pre = Prefix[preDigit];
        // 生成接下来的8位数字
        StringBuilder sb = new StringBuilder();
        sb.append(pre);
        for (int i = 0; i < 8; i++) {
            sb.append(random.nextInt(10));
        }

        return sb.toString();
    }

    public String selectSex() {
        Random random = new Random();
        return String.valueOf(random.nextInt(2));
    }
}

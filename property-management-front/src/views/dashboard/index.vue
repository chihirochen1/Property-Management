<template>
  <div class="dashboard-container">
    <!-- 公告卡片 -->
    <el-card class="box-card notice-card">
      <div slot="header" class="clearfix">
        <span class="header-title">最新公告</span>
      </div>
      <div class="content">
        <div class="section-title">
          <h3>{{ new_notices.title }}</h3>
        </div>
        <div class="notice-content">
          <p>{{ new_notices.noticeContent }}</p>
        </div>
        <div class="time">
          <p class="time-zone">
            <i class="el-icon-time"></i> {{ new_notices.createTime }}
          </p>
        </div>
      </div>
    </el-card>

    <!-- 欢迎卡片 -->
    <el-card class="box-card welcome-card">
      <div slot="header" class="clearfix">
        <span class="header-title">欢迎来到民和物业管理系统</span>
      </div>
      <div class="content">
        <div class="welcome-section">
          <div class="section-title">民和物业管理系统简介</div>
          <div class="section-content">
            <p>欢迎使用我们的物业管理系统，我们致力于为您提供便捷、高效的物业管理服务。无论您是业主、租户还是物业管理员，我们都将竭诚为您服务，为您的生活带来更多便利。</p>
          </div>
        </div>

        <div class="welcome-section">
          <div class="section-title">服务提供</div>
          <div class="section-content">
            <p>我们提供以下服务：</p>
            <ul class="service-list">
              <li><i class="el-icon-office-building"></i> 物业信息管理：管理小区信息、楼栋信息、房屋信息等。</li>
              <li><i class="el-icon-setting"></i> 维修管理：记录和处理物业维修请求，确保问题及时解决。</li>
              <li><i class="el-icon-chat-line-round"></i> 反馈管理：收集居民意见和建议，持续改进服务质量。</li>
              <li><i class="el-icon-money"></i> 费用管理：管理物业费、停车费等，提供费用明细和缴费记录。</li>
            </ul>
          </div>
        </div>

        <div class="welcome-section">
          <div class="section-title">我们的使命</div>
          <div class="section-content">
            <p>我们的使命是确保您安心居住，我们的激情是为您创造舒适生活。在您的每一个需求后面，都有我们专业的团队为您守护。</p>
          </div>
        </div>
      </div>
    </el-card>
  </div>
</template>

<script>
import { mapGetters } from "vuex";
import { getOneApi } from "@/api/notice";

export default {
  name: "Dashboard",
  data() {
    return {
      new_notices: [],
      parms: {
        title: "",
        content: "",
        time: "",
      }
    };
  },
  created() {
    this.getOne();
  },
  methods: {
    async getOne() {
      let res = await getOneApi(this.parms);
      if (res && res.code == 200) {
        this.new_notices = res.data;
        this.parms.total = res.data.total;
      }
    }
  },
  computed: {
    ...mapGetters(["name"]),
  },
};
</script>

<style lang="scss" scoped>
.dashboard-container {
  display: flex;
  justify-content: space-between;
  margin: 20px;
  gap: 20px;
}

.box-card {
  border: none;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
  transition: all 0.3s ease;

  &:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.12);
  }
}

.notice-card {
  background-color: #fffaf5;
  border-top: 4px solid #FFA726;

  .header-title {
    color: #FF9800;
  }
}

.welcome-card {
  background-color: #f5f9ff;
  border-top: 4px solid #4285F4;

  .header-title {
    color: #4285F4;
  }
}

.header-title {
  font-size: 22px;
  font-weight: 600;
  letter-spacing: 0.5px;
}

.content {
  padding: 20px;
}

.section-title {
  color: #333;
  font-size: 18px;
  font-weight: 600;
  margin: 18px 0 12px;
  padding-bottom: 8px;
  border-bottom: 1px solid #eaeaea;

  h3 {
    margin: 0;
    color: #2c3e50;
  }
}

.section-content {
  color: #555;
  line-height: 1.7;
  font-size: 15px;
  margin-bottom: 15px;

  p {
    margin-bottom: 10px;
  }
}

.notice-content {
  line-height: 1.8;
  font-size: 15px;
  color: #444;
  padding: 10px 5px;
  min-height: 200px;
}

.time-zone {
  font-size: 14px;
  color: #999;
  display: flex;
  align-items: center;
  margin-top: 15px;

  i {
    margin-right: 5px;
  }
}

.service-list {
  list-style: none;
  padding-left: 0;

  li {
    margin: 8px 0;
    padding: 8px 0;
    display: flex;
    align-items: center;

    i {
      margin-right: 10px;
      color: #4285F4;
      font-size: 16px;
    }
  }
}

.welcome-section {
  margin-bottom: 25px;

  &:last-child {
    margin-bottom: 0;
  }
}

@media (max-width: 768px) {
  .dashboard-container {
    flex-direction: column;
  }

  .box-card {
    margin-bottom: 20px;
  }
}
</style>

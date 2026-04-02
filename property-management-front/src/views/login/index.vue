<template>
  <div class="login-container">
    <div class="login-box">
      <!-- 左侧宣传区域 -->
      <div class="login-left">
        <div class="welcome-text">
          <h2>欢迎使用</h2>
          <h1>民和物业管理系统</h1>
          <p>高效、便捷、智能的物业管理平台</p>
        </div>
      </div>

      <!-- 右侧登录表单区域 -->
      <div class="login-right">
        <div class="login-header">用户登录</div>
        <el-form :model="loginForm" ref="loginForm" :rules="rules" size="medium">
          <el-form-item prop="username">
            <el-input
              v-model="loginForm.username"
              placeholder="请输入用户名"
              prefix-icon="el-icon-user"
              clearable>
            </el-input>
          </el-form-item>
          <el-form-item prop="password">
            <el-input
              type="password"
              v-model="loginForm.password"
              placeholder="请输入密码"
              prefix-icon="el-icon-lock"
              show-password>
            </el-input>
          </el-form-item>
          <el-form-item prop="userType">
            <el-radio-group v-model="loginForm.userType" class="user-type-radio">
              <el-radio :label="0">业主</el-radio>
              <el-radio :label="1">管理员</el-radio>
            </el-radio-group>
          </el-form-item>
          <el-form-item>
            <el-button
              type="primary"
              class="login-btn"
              @click="onSubmit"
              :loading="loading">
              登录
            </el-button>
          </el-form-item>
        </el-form>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      loading: false,
      loginForm: {
        username: "",
        password: "",
        userType: "", //0：业主  1： 管理员
      },
      rules: {
        username: [
          { trigger: "blur", required: true, message: "请输入用户名" },
        ],
        password: [
          { trigger: "blur", required: true, message: "请输入密码" },
        ],
        userType: [
          { trigger: "change", required: true, message: "请选择用户类型" },
        ],
      },
    };
  },
  methods: {
    onSubmit() {
      this.$refs.loginForm.validate((valid) => {
        if (valid) {
          this.loading = true;
          this.$store
            .dispatch("user/login", this.loginForm)
            .then(() => {
              this.$router.push({ path: this.redirect || "/" });
            })
            .finally(() => {
              this.loading = false;
            });
        }
      });
    },
  },
};
</script>

<style lang="scss" scoped>
.login-container {
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: #faf9f7;
  padding: 20px;
}

.login-box {
  width: 900px;
  height: 500px;
  display: flex;
  border-radius: 8px;
  overflow: hidden;
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
}

.login-left {
  width: 50%;
  background: linear-gradient(135deg, #1e5799 0%,#2989d8 50%,#207cca 51%,#7db9e8 100%);
  background-image: url("../../assets/images/login-bg.jpg"), linear-gradient(135deg, #1e5799 0%,#2989d8 50%,#207cca 51%,#7db9e8 100%);
  background-size: cover;
  background-position: center;
  color: white;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;

  &::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0, 50, 150, 0.7);
  }
}

.welcome-text {
  position: relative;
  z-index: 1;
  padding: 40px;
  text-align: center;

  h2 {
    font-size: 24px;
    font-weight: 400;
    margin-bottom: 10px;
  }

  h1 {
    font-size: 32px;
    font-weight: 600;
    margin-bottom: 20px;
  }

  p {
    font-size: 16px;
    line-height: 1.6;
  }
}

.login-right {
  width: 50%;
  background-color: #ffffff;
  padding: 50px 40px;
  display: flex;
  flex-direction: column;
}

.login-header {
  text-align: center;
  font-size: 22px;
  font-weight: 500;
  color: #333333;
  margin-bottom: 30px;
  letter-spacing: 1px;
}

.user-type-radio {
  width: 100%;
  display: flex;
  justify-content: center;

  ::v-deep .el-radio {
    margin: 0 15px;
  }
}

.login-btn {
  width: 100%;
  height: 44px;
  margin-top: 10px;
  font-size: 16px;
  letter-spacing: 2px;
}

::v-deep .el-input__inner {
  height: 44px;
  line-height: 44px;
}

::v-deep .el-form-item {
  margin-bottom: 22px;
}
</style>
<!-- <style lang="scss" scoped>
.login-container {
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: flex-end; /* 核心：整体靠右 */
  background: url("../../assets/images/bg.png") no-repeat center center;
  background-size: cover;
  background-color: #f0f2f5;
  padding: 0 100px 0 0; /* 右边留出空隙，不贴边 */
}

.login-box {
  width: 900px;
  height: 500px;
  display: flex;
  border-radius: 8px;
  overflow: hidden;
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
}

.login-left {
  width: 50%;
  background: linear-gradient(135deg, #1e5799 0%,#2989d8 50%,#207cca 51%,#7db9e8 100%);
  background-image: url("../../assets/images/login-bg.jpg"), linear-gradient(135deg, #1e5799 0%,#2989d8 50%,#207cca 51%,#7db9e8 100%);
  background-size: cover;
  background-position: center;
  color: white;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;

  &::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0, 50, 150, 0.7);
  }
}

.welcome-text {
  position: relative;
  z-index: 1;
  padding: 40px;
  text-align: center;

  h2 {
    font-size: 24px;
    font-weight: 400;
    margin-bottom: 10px;
  }

  h1 {
    font-size: 32px;
    font-weight: 600;
    margin-bottom: 20px;
  }

  p {
    font-size: 16px;
    line-height: 1.6;
  }
}

.login-right {
  width: 50%;
  background-color: #ffffff;
  padding: 50px 40px;
  display: flex;
  flex-direction: column;
}

.login-header {
  text-align: center;
  font-size: 22px;
  font-weight: 500;
  color: #333333;
  margin-bottom: 30px;
  letter-spacing: 1px;
}

.user-type-radio {
  width: 100%;
  display: flex;
  justify-content: center;

  ::v-deep .el-radio {
    margin: 0 15px;
  }
}

.login-btn {
  width: 100%;
  height: 44px;
  margin-top: 10px;
  font-size: 16px;
  letter-spacing: 2px;
}

::v-deep .el-input__inner {
  height: 44px;
  line-height: 44px;
}

::v-deep .el-form-item {
  margin-bottom: 22px;
}
</style> -->
<!-- <style lang="scss" scoped>
.login-container {
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: flex-end; /* 核心：改为右对齐，把登录框推到右侧 */
  background: url("../../assets/images/bg.png") no-repeat center center;
  background-size: cover;
  background-color: #f0f2f5;
  padding: 0 80px 0 0; /* 右侧留80px边距，避免贴边 */
}

/* 隐藏左侧蓝色栏，不再占用空间 */
.login-left {
  display: none;
}

.login-box {
  width: 450px; /* 缩小宽度，只保留登录部分 */
  height: auto;
  min-height: 500px;
  display: flex;
  border-radius: 8px;
  overflow: hidden;
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
  background-color: #ffffff; /* 给登录框单独加白色背景 */
}

.login-right {
  width: 100%; /* 占满整个login-box宽度 */
  background-color: #ffffff;
  padding: 60px 40px;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

/* 以下样式保持不变，仅做保留 */
.login-header {
  text-align: center;
  font-size: 22px;
  font-weight: 500;
  color: #333333;
  margin-bottom: 30px;
  letter-spacing: 1px;
}

.user-type-radio {
  width: 100%;
  display: flex;
  justify-content: center;

  ::v-deep .el-radio {
    margin: 0 15px;
  }
}

.login-btn {
  width: 100%;
  height: 44px;
  margin-top: 10px;
  font-size: 16px;
  letter-spacing: 2px;
}

::v-deep .el-input__inner {
  height: 44px;
  line-height: 44px;
}

::v-deep .el-form-item {
  margin-bottom: 22px;
}

.welcome-text {
  display: none; /* 隐藏左侧文字，避免残留 */
}
</style> -->

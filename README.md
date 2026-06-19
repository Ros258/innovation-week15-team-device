# 第 10 组 · 创新实验第 15 周成果

> **小组口号**：协作无界，真机验证。——10 组，苏再旭、徐浩宁、马琰、刘博文

## 项目简介

本项目为第 15 周课堂任务：小组成员基于 `Flutter` 模板项目，通过 **Fork + Pull Request** 完成协作开发，并最终在真实 Android 设备（V2301A）上运行验证。代码仓库地址：

https://github.com/Ros258/innovation-week15-team-device

---

## 小组成员与分工

| 角色 | 姓名 | 负责内容 | 对应 PR |
| ---- | ---- | -------- | ------- |
| 组长 | 苏再旭 | 创建仓库、维护 `main` 分支、审核并合并 PR、组织真机运行与最终提交 | #1 |
| 组员 A | 徐浩宁 | 修改 `groupName`、`projectTitle`、`projectSlogan` | #2 |
| 组员 B | 马琰 | 补全 `members` 中成员姓名与分工 | #3 |
| 组员 C | 刘博文 | 补充 `realDeviceChecks` 中真机运行检查项 | #4 |

---

## 协作流程

1. 组长创建原始仓库并提交基础项目；
2. 组员 Fork 仓库到个人 GitHub 空间；
3. 组员在本地修改各自负责区域；
4. 提交 commit 并 push 到个人 Fork；
5. 向组长仓库发起 Pull Request；
6. 组长 Review 代码并合并到 `main`；
7. 主电脑 pull 最新 `main` 并在真机上运行最终版本。

---

## 本地运行命令

```bash
cd week15
flutter pub get
flutter devices
flutter run -d <设备ID>
```

---

## 运行环境

- **主电脑**：Windows 11 笔记本
- **Flutter 版本**：3.29.3
- **Dart 版本**：3.7.2
- **Android SDK**：36.1.0
- **Gradle 版本**：8.4
- **手机型号**：V2301A（Android 真机）
- **连接方式**：USB 数据线 + adb
- **运行时间**：2026-06-19

---

## 真机运行检查项

- [x] 主电脑能执行 `flutter doctor` 并识别 Android toolchain
- [x] Android 手机已开启开发者选项与 USB 调试
- [x] 手机已解锁并授权 USB 调试弹窗
- [x] USB 连接模式设置为文件传输
- [x] `adb devices` 显示设备状态为 `device`，非 `unauthorized`
- [x] `flutter devices` 能识别到真实 Android 设备
- [x] `flutter run` 后手机屏幕显示本组修改后的页面
- [x] 应用能正常启动并支持热重载功能

---

## 真机运行照片

> 照片要求：由第二部手机拍摄，画面需同时包含手持的真实 Android 手机及本应用运行页面；照片中不得出现聊天记录、手机号、定位等隐私信息。

照片统一保存到 `images/android-real-device.jpg`：

![Android 真机运行照片](images/android-real-device.jpg)

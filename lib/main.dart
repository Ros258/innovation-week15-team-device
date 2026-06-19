import 'package:flutter/material.dart';

void main() {
  runApp(const InnovationTeamDeviceApp());
}

class InnovationTeamDeviceApp extends StatelessWidget {
  const InnovationTeamDeviceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '创新实验团队真机验收',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const TeamDeviceHomePage(),
    );
  }
}

class TeamDeviceHomePage extends StatelessWidget {
  const TeamDeviceHomePage({super.key});

  static const String groupName = '第10组 创新实验团队';
  static const String projectTitle = '第10组 Flutter Android 真机验收看板';
  static const String projectSlogan = '用 GitHub 协作，把第14周个人 Hello World 升级成小组真机运行成果';

  static const List<TeamMember> members = [
    TeamMember(
      role: '组长',
      name: '苏再旭',
      task: '创建原始仓库、维护 main、审核 PR、组织真机运行与证据提交',
    ),
    TeamMember(
      role: '组员 A',
      name: '徐浩宁',
      task: '修改 groupName、projectTitle、projectSlogan',
    ),
    TeamMember(
      role: '组员 B',
      name: '马琰',
      task: '补全 members 中的成员姓名与分工',
    ),
    TeamMember(
      role: '组员 C',
      name: '刘博文',
      task: '补充 realDeviceChecks 中的真机运行检查项',
    ),
  ];

  static const List<String> realDeviceChecks = [
    '主电脑能执行 flutter doctor，并识别 Android toolchain',
    'Android 手机已打开开发者选项和 USB 调试',
    '手机已解锁并在弹出的对话框中授权 USB 调试',
    'USB 连接模式设置为文件传输',
    'adb devices 显示设备状态为 device，而不是 unauthorized',
    'flutter devices 能看到真实 Android 设备',
    'flutter run 后手机屏幕显示本小组修改后的页面',
    '应用能正常启动并支持热重载功能',
  ];

  static const List<String> evidenceRules = [
    '证据照片必须由第二部手机拍摄，不能用本机截图、浏览器截图或模拟器截图代替',
    '照片中要同时看到手持真实 Android 手机和第10组 Flutter App 运行页面',
    '真机照片统一保存到 images/android-real-device.jpg，并在 README 中引用显示',
    'README 中要写清楚运行设备、运行方式、拍摄方式、照片路径和 PR 合并记录',
    '提交前检查照片不包含聊天记录、手机号、定位、身份证等隐私信息',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('创新实验第15周'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          HeroSection(),
          SizedBox(height: 20),
          MembersSection(),
          SizedBox(height: 20),
          RealDeviceChecksSection(),
          SizedBox(height: 20),
          EvidenceRulesSection(),
        ],
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal.shade50,
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.phone_android, size: 44, color: Colors.teal),
            SizedBox(height: 12),
            Text(
              TeamDeviceHomePage.groupName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Text(
              TeamDeviceHomePage.projectTitle,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              TeamDeviceHomePage.projectSlogan,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class MembersSection extends StatelessWidget {
  const MembersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '小组成员与 PR 分工',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        ...TeamDeviceHomePage.members.map(
          (member) => MemberCard(member: member),
        ),
      ],
    );
  }
}

class MemberCard extends StatelessWidget {
  const MemberCard({required this.member, super.key});

  final TeamMember member;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Text(member.role.characters.last)),
        title: Text('${member.role}：${member.name}'),
        subtitle: Text(member.task),
      ),
    );
  }
}

class RealDeviceChecksSection extends StatelessWidget {
  const RealDeviceChecksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Android 真机运行检查项',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...TeamDeviceHomePage.realDeviceChecks.map(
              (item) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text('• $item'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EvidenceRulesSection extends StatelessWidget {
  const EvidenceRulesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '最终证据要求',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...TeamDeviceHomePage.evidenceRules.map(
              (rule) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text('• $rule'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TeamMember {
  const TeamMember({
    required this.role,
    required this.name,
    required this.task,
  });

  final String role;
  final String name;
  final String task;
}

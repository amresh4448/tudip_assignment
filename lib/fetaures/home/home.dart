import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: UserInfo(),
    );
  }
}

class UserInfo extends StatelessWidget {
   UserInfo({super.key});
   final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return
        controller.users.isEmpty ? Center(child: CircularProgressIndicator()) : 

       ListView.builder(
          itemCount: controller.users.length,
          itemBuilder: (context, index) {
            final user = controller.users[index];
            return ListTile(
              leading: CircleAvatar(
                child: Text(user.name != null && user.name!.isNotEmpty ? user.name![0] : ''),
              ),
              title: Text(user.name ?? ''),
              subtitle: Text(user.email ?? ''),
            );
          },
        );
      }
    );
  }
}

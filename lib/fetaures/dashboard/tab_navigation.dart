import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudip_assignment/fetaures/dashboard/controller/tab_nav_controller.dart';


class TabNavigation extends StatelessWidget {
  TabNavigation({super.key});
  final controller = Get.put(NavigationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Center(child: controller.pages[controller.selectIndex.value]);
      }),

      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: controller.selectIndex.value,
          selectedItemColor: Colors.amber[800],
          onTap: controller.tabChanges,
        ),
      ),
    );
  }
}




import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tudip_assignment/fetaures/home/home.dart';
import 'package:tudip_assignment/fetaures/profile/profile.dart';


class NavigationController extends GetxController {
  final RxInt selectIndex = 0.obs;

  RxList<Widget> pages = [
    Home(),
    Profile(),
  ].obs;

  void tabChanges(int index) {
    selectIndex.value = index;
  }

}

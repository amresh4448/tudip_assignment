import 'package:flutter/cupertino.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class ProfileController extends GetxController {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  void save() {
    if (firstNameController.text.isEmpty ||
        lastNameController.text.isEmpty ||
        phoneController.text.isEmpty ||
        emailController.text.isEmpty) {
      Get.snackbar("All Filed", "AllFiled are required");
    } else {
            Get.snackbar("Succss", "Succcss done");

    }
  }


}

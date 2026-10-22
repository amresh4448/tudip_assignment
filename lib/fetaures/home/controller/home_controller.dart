import 'dart:developer';

import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:tudip_assignment/fetaures/home/model/users_model.dart';

class HomeController extends GetxController {
  final dio = Dio();
  final RxList<UserModel> users = <UserModel>[].obs;
  final RxBool isLoading = false.obs;


  @override
  void onInit() {
    super.onInit();
    getUser();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> getUser() async {
    isLoading.value = true;
    try {
      final response = await dio.get(
        'https://jsonplaceholder.typicode.com/users',
      );

      users.value = (response.data as List)
          .map((userJson) => UserModel.fromJson(userJson))
          .toList();
      isLoading.value = false;
    } catch (e) {
      log('Error fetching user data: $e');

      Get.showSnackbar(
        GetSnackBar(
          title: 'Error',
          message: 'Failed to fetch user data. Please try again later.',
          duration: Duration(seconds: 3),
        ),
      );
    } finally {
      isLoading.value = false;
    }
  }
}

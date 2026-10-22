import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/profile_controller.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: createUserInfo(),
    );
  }
}

Widget createUserInfo() {
  final controller = Get.put(ProfileController());
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Form(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: controller.firstNameController,
              decoration: const InputDecoration(labelText: 'First Name'),
            ),

            TextFormField(
              controller: controller.lastNameController,

              decoration: const InputDecoration(labelText: 'Last Name'),
            ),
            TextFormField(
              controller: controller.phoneController,
              decoration: const InputDecoration(labelText: 'Phone Number'),
            ),
            TextFormField(
              controller: controller.emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),

            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () => controller.save(),
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget buildProfileInfo(String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        Text('$label: ', style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(value),
      ],
    ),
  );
}

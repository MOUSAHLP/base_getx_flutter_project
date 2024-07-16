import 'package:bookanyvan_driver/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('HomeView is working'),
          onPressed: () {
            // Get.to(() => const LoginView());
            Get.back();
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    print("object");
    Get.dialog(Text("dd"));
    Get.snackbar("title", "message");
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

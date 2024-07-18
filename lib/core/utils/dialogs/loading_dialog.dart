import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingDialog {
  static final LoadingDialog _instance = LoadingDialog._internal();

  factory LoadingDialog() {
    return _instance;
  }

  LoadingDialog._internal();

  // Flag to indicate if the loading dialog is open
  bool isLoadingDialogOpen = false;

  void show({String? message}) {
    if (!isLoadingDialogOpen) {
      isLoadingDialogOpen = true;
      Get.dialog(
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 10),
                Text(message ?? 'Loading...',
                    style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
        barrierDismissible: false,
      ).then((_) {
        // Ensure the flag is reset when the dialog is closed
        isLoadingDialogOpen = false;
      });
    }
  }

  void hide() {
    if (isLoadingDialogOpen) {
      Get.back();
      isLoadingDialogOpen = false;
    }
  }
}

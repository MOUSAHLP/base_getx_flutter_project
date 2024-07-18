import 'package:flutter/material.dart';
import 'package:get/get.dart';

showConfirmationDialog(
    {String title = "Confirm Action",
    Widget content = const Text("Are you sure you want to proceed?"),
    Function()? confirmFunc}) {
  Get.dialog(AlertDialog(
    title: Text(title),
    content: content,
    actions: [
      TextButton(
        onPressed: () {
          Get.back(); // Close the dialog
        },
        child: const Text("Cancel"),
      ),
      TextButton(
        onPressed: () {
          // Handle the confirm action
          if (confirmFunc != null) {
            confirmFunc();
          }
          Get.back();
        },
        child: const Text("Confirm"),
      ),
    ],
  ));
}

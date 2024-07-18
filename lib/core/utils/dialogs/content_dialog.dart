import 'package:flutter/material.dart';
import 'package:get/get.dart';

showContentDialog({
  String title = "title",
  Widget content = const Text("content"),
}) {
  Get.dialog(AlertDialog(
    title: Text(title),
    content: content,
  ));
}

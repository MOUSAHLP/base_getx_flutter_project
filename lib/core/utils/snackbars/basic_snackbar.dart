import 'package:get/get.dart';

showBasicSnackbar(
    {String title = "title",
    String body = "body",
    snackPosition = SnackPosition.BOTTOM}) {
  Get.snackbar(
    title,
    body,
    snackPosition: snackPosition,
  );
}

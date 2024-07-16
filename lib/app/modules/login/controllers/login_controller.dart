import 'dart:convert';

import 'package:bookanyvan_driver/core/constant/api_const.dart';
import 'package:bookanyvan_driver/core/data/remote_source/base_api_client.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  test(data) async {
    Either<String, int> response = await BaseApiClient.post<int>(
        formData: jsonEncode(data),
        url: ApiConst.test,
        converter: (e) {
          return int.parse(e["data"]);
        });

    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}

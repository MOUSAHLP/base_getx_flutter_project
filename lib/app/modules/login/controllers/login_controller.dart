import 'dart:convert';

import 'package:bookanyvan_driver/app/routes/app_pages.dart';
import 'package:bookanyvan_driver/core/constant/api_const.dart';
import 'package:bookanyvan_driver/core/constant/local_storage_keys.dart';
import 'package:bookanyvan_driver/core/data/local_source/local_storage.dart';
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

  setToken() {
    LocalStorage().writeValue(LocalStorageKeys.isLogged, true);
    Get.offAllNamed(Routes.HOME);
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

import 'package:bookanyvan_driver/app/routes/app_pages.dart';
import 'package:bookanyvan_driver/core/constant/local_storage_keys.dart';
import 'package:bookanyvan_driver/core/data/local_source/local_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  LocalStorage localStorage = LocalStorage();

  @override
  RouteSettings? redirect(String? route) {
    bool? isLogged = localStorage.readValue(LocalStorageKeys.isLogged);
    if (isLogged == false || isLogged == null) {
      return const RouteSettings(name: Routes.LOGIN);
    }
    return null;
  }
}

import 'package:bookanyvan_driver/app/routes/app_pages.dart';
import 'package:bookanyvan_driver/core/constant/local_storage_keys.dart';
import 'package:bookanyvan_driver/core/data/local_source/local_storage.dart';
import 'package:bookanyvan_driver/core/utils/dialogs/loading_dialog.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;
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

  test() {
    print(LoadingDialog().isLoadingDialogOpen);
    LoadingDialog().show();
    print(LoadingDialog().isLoadingDialogOpen);
    Future.delayed(const Duration(seconds: 5), () {
      LoadingDialog().hide();
      print(LoadingDialog().isLoadingDialogOpen);
    });
  }

  removeToken() {
    LocalStorage().writeValue(LocalStorageKeys.isLogged, true);
    Get.offAllNamed(Routes.LOGIN);
  }
}

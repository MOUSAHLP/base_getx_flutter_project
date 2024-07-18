import 'package:bookanyvan_driver/app/modules/login/controllers/login_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(
      HomeController(),
    );
      Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}

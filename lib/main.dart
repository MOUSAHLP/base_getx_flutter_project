import 'package:bookanyvan_driver/app/routes/app_pages.dart';
import 'package:bookanyvan_driver/core/constant/theme.dart';
import 'package:bookanyvan_driver/core/data/remote_source/base_api_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // for path provider
  await getApplicationDocumentsDirectory();
  // for get storage
  await GetStorage.init();
  // to initiate api client
  BaseApiClient();
  // to disable orientation
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        designSize: MediaQuery.of(context).size,
        builder: (context, ctx) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeApp().light,
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        });
  }
}

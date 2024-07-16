import 'package:bookanyvan_driver/app/routes/app_pages.dart';
import 'package:bookanyvan_driver/core/data/remote_source/base_api_client.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  BaseApiClient();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}

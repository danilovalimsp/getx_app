import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_app/routes/app_pages.dart';
import 'core/bidings/app_biding.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.LOGIN,
      initialBinding: AppBinding(),
    );
  }
}

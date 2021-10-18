import 'package:get/get_navigation/src/routes/get_route.dart';
import 'app_modules.dart';

abstract class AppPages {
  static List<GetPage> pages = [
    ...LoginModule.routers,
    ...HomeModule.routers,
  ];
}

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_app/modules/pages/home/home_bindings.dart';
import 'package:getx_app/modules/pages/home/home_page.dart';

import '../../../routes/app_routes.dart';

abstract class HomeModule {
  static List<GetPage> routers = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}

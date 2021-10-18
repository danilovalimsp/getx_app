import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../../routes/app_routes.dart';
import 'login_bindings.dart';
import 'login_page.dart';

abstract class LoginModule {
  static List<GetPage> routers = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}

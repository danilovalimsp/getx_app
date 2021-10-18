import 'package:get/get.dart';
import 'package:getx_app/core/data/repositories/api_repository.dart';

import '../../../routes/app_routes.dart';

class LoginController extends GetxController {
  final ApiRepository _repository;
  RxBool isLoading = false.obs;

  LoginController(this._repository);

  void login() async {
    isLoading.value = true;

    _repository.login();
    await Future.delayed(Duration(seconds: 3));
    isLoading.value = false;

    Get.toNamed(AppRoutes.HOME);
  }
}

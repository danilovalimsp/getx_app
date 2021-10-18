import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_app/core/data/repositories/api_repository.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dio>(() => Dio());
    Get.lazyPut<ApiRepository>(() => ApiRepository(Get.find()));
  }
}

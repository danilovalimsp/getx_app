import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/commons/widgets/custom_loading.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (controller) {
      return LayoutBuilder(builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(title: Text('LoginPage')),
          body: Container(
            width: constraints.maxWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: controller.login,
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: constraints.maxWidth * .1),
                  ),
                ),
                Obx(
                  () => CustomLoading(
                    isLoading: controller.isLoading.value,
                  ),
                ),
              ],
            ),
          ),
        );
      });
    });
  }
}

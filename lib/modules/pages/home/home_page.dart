import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var homeController = Get.find<HomeController>();

    return LayoutBuilder(builder: (context, constraints) {
      print("layout build");
      return Scaffold(
        appBar: AppBar(),
        body: Container(
          width: constraints.maxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  homeController.count.value.toString(),
                  style: TextStyle(fontSize: constraints.maxWidth * .25),
                ),
              ),
              TextButton(
                  onPressed: homeController.increase,
                  child: Text("Increase",
                      style: TextStyle(fontSize: constraints.maxWidth * .1)))
            ],
          ),
        ),
      );
    });
  }
}

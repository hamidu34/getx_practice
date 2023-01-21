import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controllers/tapcontroller.dart';
import 'package:getx_practice/screens/first_screen.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GetX Practice'),
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => CircleAvatar(
                  radius: 20,
                  child: Text(
                    controller.x.toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  controller.increaseX();
                },
                child: const Text('Tap to update'),
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => const FirstScreen());
                },
                child: const Text('Move to FirstScreen'),
              ),
            ]),
      ),
    );
  }
}

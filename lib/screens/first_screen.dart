import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controllers/tapcontroller.dart';
import 'package:getx_practice/screens/second_screen.dart';

import '../controllers/listcontroller.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    ListController listcontroller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {
            HapticFeedback.selectionClick();
            Get.back();
          },
        ),
        title: const Text('Back to HomePage'),
      ),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                controller.decreaseX();
              },
              child: const Text('Tap to Decrease'),
            ),
            TextButton(
              onPressed: () {
                listcontroller.setvalues(controller.x.value);
              },
              child: const Text('Add current X to List'),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const SecondPage());
              },
              child: const Text('Move to List Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

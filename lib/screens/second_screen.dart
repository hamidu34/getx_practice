import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controllers/listcontroller.dart';
import 'package:getx_practice/screens/homepage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    ListController listcontroller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: TextButton.icon(
          onPressed: () {
            Get.offAll(() => const MyHomepage(), transition: Transition.fade);
          },
          icon: const Icon(Icons.arrow_back_ios),
          label: const Text('Home'),
        ),
        title: const Text('RetriveLists'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: ListView.builder(
          itemCount: listcontroller.list.length,
          itemBuilder: (ctx, i) => ListTile(
            leading: CircleAvatar(
              radius: 20,
              child: Text('${i + 1}'),
            ),
            title: Text(listcontroller.list[i].toString()),
          ),
        ),
      ),
    );
  }
}

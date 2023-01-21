import 'package:get/get.dart';

import '../controllers/listcontroller.dart';
import '../controllers/tapcontroller.dart';

class InitDep implements Bindings {
  @override
  void dependencies() {
    Get.put(TapController());
    Get.put(ListController());
  }
}

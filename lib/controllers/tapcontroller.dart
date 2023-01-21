import 'package:get/get.dart';

class TapController extends GetxController {
  RxInt _x = 0.obs;
  RxInt get x => _x;

  void increaseX() {
    _x++;
  }

  void decreaseX() {
    _x--;
  }
}

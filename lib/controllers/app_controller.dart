import 'package:get/get.dart';

class AppController extends GetxController {
  RxInt selectedIndex = 0.obs;

  activeIndex(int index) {
    selectedIndex.value = index;
  }
}

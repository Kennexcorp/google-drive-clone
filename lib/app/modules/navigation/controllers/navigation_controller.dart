import 'package:get/get.dart';

class NavigationController extends GetxController {
  //TODO: Implement NavigationController

  final count = 0.obs;
  var tabIndex = 0;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void changeTabIndex(int index) {
    
    tabIndex = index;
    
    update();

    print(tabIndex);
  }
}

import 'package:get/get.dart';

import '../controllers/starred_controller.dart';

class StarredBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StarredController>(
      () => StarredController(),
    );
  }
}

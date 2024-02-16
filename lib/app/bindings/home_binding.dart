import 'package:bomb_time/app/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    // Get.put<HomeController>(HomeController());
  }
}

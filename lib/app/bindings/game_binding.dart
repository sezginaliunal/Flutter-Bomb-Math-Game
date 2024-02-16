import 'package:bomb_time/app/controllers/game_controller.dart';
import 'package:get/get.dart';

class GameBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MathGameController>(() => MathGameController());
    // Get.put<GameController>(GameController());
  }
}

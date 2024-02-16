import 'dart:async';
import 'package:bomb_time/app/audio/audio_asset_url.dart';
import 'package:bomb_time/app/audio/audio_manager.dart';
import 'package:bomb_time/app/controllers/math_controller.dart';
import 'package:bomb_time/app/res/durations/duration_items.dart';
import 'package:bomb_time/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MathGameController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final MathGameLogic mathGameLogic = MathGameLogic();
  final Rx<TextEditingController> textEditingController =
      TextEditingController().obs;
  late AnimationController animationController;
  late AudioManager _audioManager;
  late Timer _timer;
  RxInt _countdown = 10.obs;

  int get countDown => _countdown.value;
  final RxBool _visibility = false.obs;
  RxInt number1 = 0.obs;
  RxInt number2 = 0.obs;
  RxString operation = '+'.obs;
  RxInt result = 0.obs;
  bool get visibility => _visibility.value;
  double iconSize = 50;
  @override
  void onInit() {
    super.onInit();
    _initializeController();
  }

  @override
  void onClose() {
    animationController.stop();
    animationController.dispose();
    _audioManager.dispose();
    _timer.cancel();
    super.onClose();
  }

  void _initializeController() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: _countdown.value),
    );
    _audioManager = AudioManager();
    _startTimer();
    _updateNumbers();
  }

  Future<void> _startTimer() async {
    _timer = Timer.periodic(DurationItems.durationSmall(), (timer) async {
      if (_countdown.value > 0) {
        animationController.forward();
        _audioManager.playSound(AudioPath.timer.soundPath);
        _countdown--;
        if (_countdown.value == 0) {
          _timer.cancel();
          await Future.delayed(DurationItems.durationSmall(), () {});
          Get.offAllNamed(AppRoutes.RESULT);
        }
      }
    });
  }

  void stopTimer() {
    if (_timer.isActive) {
      _timer.cancel();
    }
    _countdown.value = 10;
  }

  void _updateNumbers() {
    mathGameLogic.generateNumbers();
    number1.value = mathGameLogic.number1;
    number2.value = mathGameLogic.number2;
    operation.value = mathGameLogic.operation;
    result.value = mathGameLogic.result;
  }

  void clearTextField() {
    textEditingController.value.clear();
  }

  void checkResult() async {
    final value = textEditingController.value.text.trim();
    if (mathGameLogic.checkResult(value) == true) {
      checkVisibility();
      clearTextField();
      _updateNumbers();
      _countdown.value += 10;
      _increaseAnimationDuration();
    } else {
      _timer.cancel();
      Get.offAllNamed(AppRoutes.RESULT);
    }
  }

  void checkVisibility() async {
    _visibility.value = !_visibility.value;
    await Future.delayed(DurationItems.durationNormal());
    _visibility.value = !_visibility.value;
  }

  void _increaseAnimationDuration() {
    animationController.reset();
    final newDuration = Duration(seconds: _countdown.value);
    animationController.duration = newDuration;
  }
}

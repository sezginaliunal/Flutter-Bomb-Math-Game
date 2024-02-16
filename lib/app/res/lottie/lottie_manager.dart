import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAssetManager extends StatelessWidget {
  const LottieAssetManager(
      {Key? key,
      required this.lottiePath,
      this.animationController,
      this.animate,
      this.repeat,
      this.width,
      this.delegates})
      : super(key: key);
  final String lottiePath;
  final LottieDelegates? delegates;
  final AnimationController? animationController;
  final bool? animate;
  final bool? repeat;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Lottie.asset(lottiePath,
        repeat: repeat,
        controller: animationController,
        animate: animate,
        delegates: delegates,
        filterQuality: FilterQuality.high,
        width: width);
  }
}

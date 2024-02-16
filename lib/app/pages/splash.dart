import 'package:bomb_time/app/res/durations/duration_items.dart';
import 'package:bomb_time/app/res/layouts/main_layout.dart';
import 'package:bomb_time/app/res/lottie/lottie_enum.dart';
import 'package:bomb_time/app/res/lottie/lottie_manager.dart';
import 'package:bomb_time/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _goToPage();
  }

  Future<void> _goToPage() async {
    await Future.delayed(DurationItems.durationNormal());
    Get.offAllNamed(AppRoutes.HOME);
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Scaffold(
        body: Center(
          child: LottieAssetManager(
            lottiePath: LottieItems.fire.lottiePath,
            width: Get.width / 2,
          ),
        ),
      ),
    );
  }
}

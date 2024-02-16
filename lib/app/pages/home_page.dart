import 'package:bomb_time/app/controllers/home_controller.dart';
import 'package:bomb_time/app/res/boxes/height.dart';
import 'package:bomb_time/app/res/constants/paddings.dart';
import 'package:bomb_time/app/res/layouts/main_layout.dart';
import 'package:bomb_time/app/res/lottie/lottie_enum.dart';
import 'package:bomb_time/app/res/lottie/lottie_manager.dart';
import 'package:bomb_time/app/res/widgets/home_buttons.dart';
import 'package:bomb_time/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Scaffold(
        body: Padding(
          padding: getPaddingValue(CustomPadding.medium),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const HeightBoxesItems.heightFifty(),
                Padding(
                  padding: getPaddingHorizontalValue(CustomPadding.medium),
                  child: FittedBox(
                    child: Text(
                      'B O M B   M A T H',
                      style: Get.textTheme.headlineLarge,
                    ),
                  ),
                ),
                const HeightBoxesItems.heightFifty(),
                Center(
                  child: LottieAssetManager(
                    lottiePath: LottieItems.fire.lottiePath,
                    width: Get.width / 2,
                  ),
                ),
                const HeightBoxesItems.heightFifty(),
                HomeButtons(
                    text: 'Play',
                    onPressed: () => Get.toNamed(AppRoutes.GAME),
                    icon: Icons.fireplace),
                const HomeButtons(text: 'Share us', icon: Icons.share),
                const HomeButtons(text: 'Comment us', icon: Icons.comment),
                const HeightBoxesItems.heightFifty(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

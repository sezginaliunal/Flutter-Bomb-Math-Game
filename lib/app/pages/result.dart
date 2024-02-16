import 'package:bomb_time/app/audio/audio_asset_url.dart';
import 'package:bomb_time/app/audio/audio_manager.dart';
import 'package:bomb_time/app/res/boxes/height.dart';
import 'package:bomb_time/app/res/layouts/main_layout.dart';
import 'package:bomb_time/app/res/lottie/lottie_enum.dart';
import 'package:bomb_time/app/res/lottie/lottie_manager.dart';
import 'package:bomb_time/app/res/widgets/home_buttons.dart';
import 'package:bomb_time/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late AudioManager _audioManager;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioManager = AudioManager();
    _audioManager.playSound(AudioPath.bomb.soundPath);
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        child: Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'You could not \nsolve the bomb',
                style: Get.textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              LottieAssetManager(
                width: Get.width / 2,
                lottiePath: LottieItems.fire.lottiePath,
              ),
              const HeightBoxesItems.heightTwenty(),
              HomeButtons(
                  text: 'Play again',
                  onPressed: () => Get.toNamed(AppRoutes.GAME),
                  icon: Icons.fireplace),
              HomeButtons(
                  text: 'Go to menu',
                  icon: Icons.menu,
                  onPressed: () => Get.offAllNamed(AppRoutes.HOME)),
              const HeightBoxesItems.heightTwenty()
            ],
          ),
        ),
      ),
    ));
  }
}

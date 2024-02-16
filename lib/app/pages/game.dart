import 'package:bomb_time/app/controllers/game_controller.dart';
import 'package:bomb_time/app/res/boxes/height.dart';
import 'package:bomb_time/app/res/colors/app_colors.dart';
import 'package:bomb_time/app/res/constants/paddings.dart';
import 'package:bomb_time/app/res/durations/duration_items.dart';
import 'package:bomb_time/app/res/layouts/main_layout.dart';
import 'package:bomb_time/app/res/lottie/lottie_enum.dart';
import 'package:bomb_time/app/res/lottie/lottie_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class GamePage extends GetView<MathGameController> {
  const GamePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Obx(() => Scaffold(
            body: Padding(
              padding: getPaddingHorizontalValue(CustomPadding.medium),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LottieAssetManager(
                      width: 100,
                      animationController: controller.animationController,
                      repeat: false,
                      lottiePath: LottieItems.timer.lottiePath,
                      delegates: LottieDelegates(
                        text: (p0) {
                          return controller.countDown.toString();
                        },
                      ),
                    ),
                    Visibility(
                        replacement: const Text(''),
                        visible: controller.visibility,
                        child: Text(
                          '+10',
                          style: Get.textTheme.labelMedium
                              ?.copyWith(color: AppColor.subtitleNeonColor),
                        )
                            .animate()
                            .fade(duration: DurationItems.durationNormal())
                            .slideY()),
                    const HeightBoxesItems.heightTwenty(),
                    _mathTextProblem(),
                    const HeightBoxesItems.heightFifty(),
                    LottieAssetManager(
                      width: Get.width / 1.8,
                      animationController: controller.animationController,
                      repeat: false,
                      lottiePath: LottieItems.bomb.lottiePath,
                      delegates: LottieDelegates(
                        text: (p0) {
                          print(p0);

                          return controller.countDown.toString();
                        },
                      ),
                    ),
                    const HeightBoxesItems.heightFifteen(),
                    TextField(
                      style: Get.textTheme.labelMedium,
                      keyboardType: TextInputType.none,
                      controller: controller.textEditingController.value,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () => controller.clearTextField(),
                            icon: const Icon(Icons.cancel_outlined)),
                      ),
                    ),
                    const HeightBoxesItems.heightFifteen(),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 10,
                        childAspectRatio: 2,
                        crossAxisCount: 5,
                      ),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () => controller.textEditingController.value
                              .text += index.toString(),
                          child: Chip(
                              label: Text(
                            index.toString(),
                          )),
                        );
                      },
                    ),
                    const HeightBoxesItems.heightFifteen(),
                    CircleAvatar(
                      radius: controller.iconSize,
                      backgroundColor: AppColor.linkGreenColor,
                      child: IconButton(
                          onPressed: controller.checkResult,
                          icon: Icon(
                            Icons.cable,
                            color: Get.iconColor,
                            size: controller.iconSize,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }

  Row _mathTextProblem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(controller.number1.toString(), style: Get.textTheme.headlineLarge),
        Text(controller.operation.toString(),
            style: Get.textTheme.headlineLarge),
        Text(controller.number2.toString(), style: Get.textTheme.headlineLarge),
        Text(" = ?", style: Get.textTheme.headlineLarge),
      ],
    );
  }
}

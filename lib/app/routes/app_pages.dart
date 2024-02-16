import 'package:bomb_time/app/bindings/game_binding.dart';
import 'package:bomb_time/app/pages/game.dart';
import 'package:bomb_time/app/pages/result.dart';
import 'package:bomb_time/app/pages/splash.dart';
import 'package:get/get.dart';

import '../bindings/home_binding.dart';
import '../pages/home_page.dart';
import '../pages/unknown_route_page.dart';
import 'app_routes.dart';

const _defaultTransition = Transition.zoom;

class AppPages {
  static final unknownRoutePage = GetPage(
    name: AppRoutes.UNKNOWN,
    page: () => const UnknownRoutePage(),
    transition: _defaultTransition,
  );
  static final homePage = GetPage(
    name: AppRoutes.HOME,
    page: () => const HomePage(),
    binding: HomeBinding(),
    transition: _defaultTransition,
  );
  static final gamePage = GetPage(
    name: AppRoutes.GAME,
    page: () => const GamePage(),
    binding: GameBinding(),
    transition: _defaultTransition,
  );
  static final resultPage = GetPage(
    name: AppRoutes.RESULT,
    page: () => const ResultPage(),
    transition: _defaultTransition,
  );
  static final splashPage = GetPage(
    name: AppRoutes.SPLASH,
    page: () => const SplashPage(),
    transition: _defaultTransition,
  );
  static final List<GetPage> pages = [
    unknownRoutePage,
    homePage,
    resultPage,
    gamePage,
    splashPage
  ];
}

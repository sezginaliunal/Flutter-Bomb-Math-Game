import 'package:bomb_time/app/res/layouts/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/unknown_route_controller.dart';

class UnknownRoutePage extends GetView<UnknownRouteController> {
  const UnknownRoutePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      child: Text('UnknownRoute'),
    );
  }
}

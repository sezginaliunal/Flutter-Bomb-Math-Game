import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons(
      {Key? key, required this.text, this.onPressed, required this.icon})
      : super(key: key);
  final String text;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: Get.iconColor),
      label: Text(
        text,
        style: Get.textTheme.labelMedium,
      ),
    );
  }
}

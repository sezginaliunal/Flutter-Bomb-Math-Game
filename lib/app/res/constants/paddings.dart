import 'package:flutter/material.dart';

enum CustomPadding {
  small,
  medium,
  large,
  extraLarge,
  doubleExtraLarge,
}

EdgeInsets getPaddingValue(CustomPadding padding) {
  switch (padding) {
    case CustomPadding.small:
      return const EdgeInsets.all(8.0);
    case CustomPadding.medium:
      return const EdgeInsets.all(16.0);
    case CustomPadding.large:
      return const EdgeInsets.all(24.0);
    case CustomPadding.extraLarge:
      return const EdgeInsets.all(32.0);
    case CustomPadding.doubleExtraLarge:
      return const EdgeInsets.all(40.0);
    default:
      return EdgeInsets.zero;
  }
}

EdgeInsets getPaddingHorizontalValue(CustomPadding padding) {
  switch (padding) {
    case CustomPadding.small:
      return const EdgeInsets.symmetric(horizontal: 8);
    case CustomPadding.medium:
      return const EdgeInsets.symmetric(horizontal: 16);
    case CustomPadding.large:
      return const EdgeInsets.symmetric(horizontal: 24);
    case CustomPadding.extraLarge:
      return const EdgeInsets.symmetric(horizontal: 32);
    case CustomPadding.doubleExtraLarge:
      return const EdgeInsets.symmetric(horizontal: 40);
    default:
      return EdgeInsets.zero;
  }
}

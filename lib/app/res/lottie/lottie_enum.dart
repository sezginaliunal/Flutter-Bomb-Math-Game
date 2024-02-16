enum LottieItems { timer, bomb, fire }

extension LottieItemsExtension on LottieItems {
  String _path() {
    switch (this) {
      case LottieItems.timer:
        return 'timer';
      case LottieItems.bomb:
        return 'bomb';
      case LottieItems.fire:
        return 'fire';
    }
  }

  String get lottiePath => 'assets/lottie/${_path()}.json';
}

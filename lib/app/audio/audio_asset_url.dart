enum AudioPath { bomb, timer, correct }

extension AudioPathExtension on AudioPath {
  String _path() {
    switch (this) {
      case AudioPath.bomb:
        return 'bomb';
      case AudioPath.timer:
        return 'timer';
      case AudioPath.correct:
        return 'correct';
    }
  }

  String get soundPath => 'audio/${_path()}.mp3';
}

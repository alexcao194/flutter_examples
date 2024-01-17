import 'package:solid/apple_music_library/apple_music_library.dart';

class MusicPlayerWidget {
  AppleMusicLibrary appleMusicLibrary = AppleMusicLibrary();
  // UI

  // Logic
  void playButtonClicked() {
    if(appleMusicLibrary.isPlaying) {
      return;
    }
    appleMusicLibrary.play();
  }

  void pauseButtonClicked() {
    if(!appleMusicLibrary.isPlaying) {
      return;
    }
    appleMusicLibrary.pause();
  }

  void stopButtonClicked() {
    appleMusicLibrary.stop();
  }

  void nextButtonClicked() {
    appleMusicLibrary.next();
  }

  void previousButtonClicked() {
    appleMusicLibrary.previous();
  }
}
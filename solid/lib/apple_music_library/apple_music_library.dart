class AppleMusicLibrary {
  bool _isPlaying = false;
  AppleMusicLibrary();

  bool get isPlaying => _isPlaying;

  void play() {
    if(_isPlaying) {
      print("The audio is already playing");
    }

    _isPlaying = true;
  }

  void pause() {
    if(!_isPlaying) {
      print("The audio is already paused");
    }

    _isPlaying = false;
  }

  void stop() {
    _isPlaying = false;
  }

  void next() {
    print("Next song");
  }

  void previous() {
    print("Previous song");
  }
}
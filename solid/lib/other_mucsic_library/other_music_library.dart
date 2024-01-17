class OtherMusicLibrary {
  bool _isPlaying = false;
  OtherMusicLibrary();

  bool get isPlaying => _isPlaying;

  void playOrPause() {
    _isPlaying = !_isPlaying;
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
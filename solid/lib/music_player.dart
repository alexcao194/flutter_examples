import 'apple_music_library/apple_music_library.dart';
import 'other_mucsic_library/other_music_library.dart';

abstract class MusicLibrary {
  void play();

  void pause();

  void stop();

  void next();

  void previous();
}

class AppleMusicLibraryImpl implements MusicLibrary {
  // AppleMusicLibrary has play(), pause(), stop(), next(), and previous() methods
  final AppleMusicLibrary _appleMusicLibrary;
  const AppleMusicLibraryImpl(this._appleMusicLibrary);

  @override
  void play() {_appleMusicLibrary.play();}

  @override
  void pause() {_appleMusicLibrary.pause();}

  @override
  void stop() {_appleMusicLibrary.stop();}

  @override
  void next() {_appleMusicLibrary.next();}

  @override
  void previous() {_appleMusicLibrary.previous();}
}

class OtherMusicLibraryImpl implements MusicLibrary {
  // OtherMusicLibrary is a class from another package
  // that has playOrPause(), stop(), next(), and previous() methods
  final OtherMusicLibrary _otherMusicLibrary;
  const OtherMusicLibraryImpl(this._otherMusicLibrary);

  @override
  void play() {
    if(!_otherMusicLibrary.isPlaying) {
      // Unless the music is already playing, playOrPause() will play the music
      _otherMusicLibrary.playOrPause();
    }
  }

  @override
  void pause() {
    if(_otherMusicLibrary.isPlaying) {
      _otherMusicLibrary.playOrPause();
    }
  }

  @override
  void stop() {_otherMusicLibrary.stop();}

  @override
  void next() {_otherMusicLibrary.next();}

  @override
  void previous() {_otherMusicLibrary.previous();}
}

class MusicPlayer {
  final MusicLibrary _library;

  MusicPlayer(this._library);

  void play() {_library.play();}

  void pause() {_library.pause();}

  void stop() {_library.stop();}

  void next() {_library.next();}

  void previous() {_library.previous();}
}
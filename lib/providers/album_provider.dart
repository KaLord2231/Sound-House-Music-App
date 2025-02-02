import 'package:flutter/material.dart';
import 'package:sound_house_app/models/album.dart';

import '../models/album.dart';

class AlbumProvider with ChangeNotifier {
  AlbumModel? _currentAlbum;
  AlbumModel? get currentAlbum => _currentAlbum;
  set currentPackage(AlbumModel? current) {
    _currentAlbum = current;
    notifyListeners();
  }

  totalLikes() {
    int likes = 0;
    for (var element in _currentAlbum!.songs!) {
      likes += element.likes!.length;
    }
    return likes;
  }

  totalTracks() {
    int tracks = 0;
    for (var element in _currentAlbum!.songs!) {
      tracks += element.idSong!.length;
    }
    return tracks;
  }
}



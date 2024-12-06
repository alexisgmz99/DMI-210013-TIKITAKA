import 'package:flutter/material.dart';
import 'package:toktik_210373/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;

  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    //* Pregunta de examen, tiene que ver con el Future Void, ¿para que sirve?

    notifyListeners();
  }
}
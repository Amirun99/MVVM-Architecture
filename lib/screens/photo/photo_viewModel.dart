import 'package:flutter/material.dart';
import 'package:flutter_jsonplaceholder/services/photo_service/photo_rest.dart';

import '../../models/photo.dart';

class PhotoViewModel extends ChangeNotifier {
  List<Photo> _photo = [];

  List<Photo> get photos => _photo;
  PhotoRest photo = PhotoRest();

  void getAllPhoto() async {
    _photo = await photo.fetchPhoto();
    notifyListeners();
  }
}

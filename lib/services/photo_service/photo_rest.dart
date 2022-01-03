import 'package:flutter_jsonplaceholder/services/RestService.dart';
import 'package:flutter_jsonplaceholder/services/photo_service/photo_service.dart';

import '../../models/photo.dart';

class PhotoRest implements PhotoService {
  RestService rest = RestService();

  @override
  Future<List<Photo>> fetchPhoto() async {
    final response = await rest.get('photos/');

    return (response as List).map((e) => Photo.fromJson(e)).toList();
  }
}

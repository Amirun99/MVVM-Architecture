import 'package:flutter_jsonplaceholder/models/photo.dart';

abstract class PhotoService {
  Future<List<Photo>> fetchPhoto();
}

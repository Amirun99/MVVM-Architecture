import 'package:flutter_jsonplaceholder/models/comment.dart';
import 'package:flutter_jsonplaceholder/services/RestService.dart';

import 'comments_service.dart';

class CommentsRest implements CommentsService {
  RestService rest = RestService();

  @override
  Future<List<Comment>> fetchComments() async {
    final response = await rest.get('comments/');
    return (response as List).map((value) => Comment.fromJson(value)).toList();
  }
}

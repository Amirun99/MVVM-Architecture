import 'package:flutter_jsonplaceholder/models/comment.dart';

abstract class CommentsService {
  Future<List<Comment>> fetchComments();
}

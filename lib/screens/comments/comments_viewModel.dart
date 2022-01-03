import 'package:flutter/cupertino.dart';
import 'package:flutter_jsonplaceholder/models/comment.dart';
import 'package:flutter_jsonplaceholder/services/comments_service/comments_rest.dart';

class CommentViewModel extends ChangeNotifier {
  List<Comment> _commentList = [];

  List<Comment> get comments => _commentList;
  CommentsRest comment = CommentsRest();

  void getAllComments() async {
    _commentList = await comment.fetchComments();
    notifyListeners();
  }
}

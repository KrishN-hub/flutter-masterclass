import 'package:get/get_connect/http/src/utils/utils.dart';

class Todo {
  String title;
  bool isDone;

  Todo({
    required this.title,
    this.isDone = false,
  });
}

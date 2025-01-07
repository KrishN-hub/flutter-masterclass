import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/todo.dart';

class TodoController extends GetxController {
  var todos = <Todo>[].obs;
  TextEditingController todotextController = TextEditingController();

  void addTodo(String title) {
    if (title.isNotEmpty) {
      todos.add(Todo(title: title));
    }
  }
}

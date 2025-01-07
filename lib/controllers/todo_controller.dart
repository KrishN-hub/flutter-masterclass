import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/todo.dart';

class TodoController extends GetxController {
  var todos = <Todo>[].obs; // Observable list of todos
  TextEditingController todotextController = TextEditingController();

  // Add a new todo
  void addTodo() {
    if (todotextController.text.isNotEmpty) {
      todos.add(Todo(title: todotextController.text));
      todotextController.clear(); // Clear the input field after adding
    }
  }

  // Mark a todo as done or not done
  void toggleTodoStatus(int index) {
    todos[index].isDone = !todos[index].isDone;
    todos.refresh();
  }

  // Delete a todo
  void deleteTodo(int index) {
    todos.removeAt(index);
  }
}

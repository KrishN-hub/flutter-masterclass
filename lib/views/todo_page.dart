import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_class/controllers/todo_controller.dart';

class TodoPage extends StatelessWidget {
  final TodoController todoController = Get.put(TodoController());

  TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          todoController.addTodo(todoController.todotextController.text);
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          //Todo list details

          //Todo add button
          Row(
            children: [
              Expanded(
                  child: TextField(
                controller: todoController.todotextController,
                decoration: InputDecoration(labelText: 'Add a Task'),
              ))
            ],
          )
        ],
      ),
    );
  }
}

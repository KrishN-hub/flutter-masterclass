import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/todo_controller.dart';

class TodoPage extends StatelessWidget {
  final TodoController todoController = Get.put(TodoController());

  TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To-Do App"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => todoController.addTodo(),
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          // Task List
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: todoController.todos.length,
                itemBuilder: (context, index) {
                  final todo = todoController.todos[index];
                  return ListTile(
                    leading: Checkbox(
                      value: todo.isDone,
                      onChanged: (_) => todoController.toggleTodoStatus(index),
                    ),
                    title: Text(
                      todo.title,
                      style: TextStyle(
                        decoration: todo.isDone
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => todoController.deleteTodo(index),
                    ),
                  );
                },
              );
            }),
          ),
          // Task Input Field
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: todoController.todotextController,
                    decoration: const InputDecoration(
                      labelText: 'Add a Task',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () => todoController.addTodo(),
                  child: const Text('Add'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

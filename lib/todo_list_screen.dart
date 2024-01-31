import 'package:flutter/material.dart';
import 'package:flutter_ostad/add_new_todo_screen.dart';
import 'package:flutter_ostad/edit_todo_screen.dart';
import 'package:flutter_ostad/todo.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<Todo> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Todo App',
        ),
      ),
      body: Visibility(
        visible: todoList.isNotEmpty,
        replacement: const Center(
          child: Text('Todo list Empty'),
        ),
        child: ListView.separated(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todoList[index].title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(todoList[index].description),
                  Text(todoList[index].dateTime.toString()),
                ],
              ),
              trailing: Wrap(
                children: [
                  IconButton(
                    onPressed: () =>showDeleteConfermationDialog(index),
                    icon: const Icon(Icons.delete),
                  ),
                  IconButton(
                    onPressed: () => _onTapEditTodo(index),
                    icon: const Icon(Icons.edit),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.brown,
              height: 12,
              indent: 16,
              //endIndent: 16,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapAddNewTodoFAB,
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _onTapEditTodo(int index) async {
    final Todo? updatedTodo = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditTodoScreen(
          todo: todoList[index],
        ),
      ),
    );
    if (updatedTodo != null) {
      todoList[index] = updatedTodo;
      setState(() {});
    }
  }

  Future<void> _onTapAddNewTodoFAB() async {
    //Asynchronous
    //Future
    //await
    //async
    final Todo? result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddNewTodoScreen(),
      ),
    );
    if (result != null) {
      todoList.add(result);
      setState(() {});
    }
  }

  void showDeleteConfermationDialog(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete Todo'),
          content: const Text('Are you sure you want to delete'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _removeTodo(index);
                Navigator.pop(context);
              },
              child: const Text(
                'Yes, Delete',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        );
      },
    );
  }

  void _removeTodo(int index){
    todoList.removeAt(index);
    setState(() {

    });
  }
}

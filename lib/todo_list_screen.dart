import 'package:flutter/material.dart';
import 'package:flutter_ostad/add_new_todo_screen.dart';
import 'package:flutter_ostad/edit_todo_screen.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Todo App',
        ),
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: const Text('Todo title'),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Todo body'),
                Text('time'),
              ],
            ),
            trailing: Wrap(
              children: [
                IconButton(
                  onPressed: showDeleteConfermationDialog,
                  icon: const Icon(Icons.delete),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditTodoScreen(),
                      ),
                    );
                  },
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddNewTodoScreen(),
            ),
          );
        },
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }

  void showDeleteConfermationDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Delete Todo'),
          content: Text('Are you sure you want to delete'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
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
}

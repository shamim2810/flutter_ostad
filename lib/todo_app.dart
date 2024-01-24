import 'package:flutter/material.dart';
import 'package:flutter_ostad/todo_list_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoListScreen(),
      theme: ThemeData(
        colorSchemeSeed: Colors.brown,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.brown,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.brown),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellowAccent),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ),
      ),
    );
  }
}

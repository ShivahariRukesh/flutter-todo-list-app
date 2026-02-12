import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/todo_list.dart';

class Home extends StatelessWidget {
  //Here in dart the super constructor must be initialized first then only the subclass constructor can be initialized. Hence super constructor call shouldnot be inside the subclass constructor
  //  General structure:
  // ClassName(parameters) : initializer1, initializer2 {
  //   constructor body
  // }
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo List App",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text(
            "ToDo'S",
            style: GoogleFonts.playwriteCuGuides(
              textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: TodoList(),
      ),
    );
  }
}

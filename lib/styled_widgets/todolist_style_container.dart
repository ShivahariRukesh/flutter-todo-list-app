import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/todo_list.dart';

class TodolistStyleContainer extends StatelessWidget {
  TodolistStyleContainer({
    Map<String, String>? todoItem,
    Key? key,
  }) : this.todoItem = todoItem,
       super(key: key);

  final Map<String, String>? todoItem;

  @override
  Widget build(BuildContext context) {
    final todoTitle = todoItem?["title"] ?? "Null";
    final todoDescription =
        todoItem?["description"] ?? "Null";
    return Container(
      height: 100,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 175, 184, 77),
        border: Border.all(
          color: Colors.indigoAccent,
          width: 2,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.app_registration),

          Expanded(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "$todoTitle",
                  overflow: TextOverflow.fade,
                  softWrap:
                      false, //Doesn't add new line to show all text
                  style: GoogleFonts.bricolageGrotesque(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "$todoDescription",
                  overflow: TextOverflow.fade,
                  softWrap:
                      false, //Doesn't add new line to show all text
                  style: GoogleFonts.bricolageGrotesque(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () =>
                    print("Somethings cokking"),
                icon: Icon(Icons.edit),
              ),

              IconButton(
                onPressed: () =>
                    print("Close Button Closed"),
                onHover: (bool v) => "gg",
                icon: Icon(Icons.close_rounded),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TodolistStyleContainer extends StatelessWidget {
  const TodolistStyleContainer({super.key});

  @override
  Widget build(BuildContext context) {
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

          Text(
            "This is a random text and a proper stateful widget and flow is yet to be implemented",
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

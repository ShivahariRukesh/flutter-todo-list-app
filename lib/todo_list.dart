import 'package:flutter/material.dart';
import 'package:todoapp/styled_widgets/todolist_style_container.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<StatefulWidget> createState() => _TodoList();
}

class _TodoList extends State<TodoList> {
  int count = 0;

  void increaseCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //SizeBox.expand Takes whole available screen
    //  Does it always fill the screen?
    // Not automatically. It fills the space given by its parent.
    // If the parent has limited size (like a Column, Row, or a Container with no size), SizedBox.expand() will only expand to that available space, not the whole screen.
    return SizedBox.expand(
      child: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment:
                    CrossAxisAlignment.center,
                children: [
                  for (int i = 0; i < count; i++)
                    TodolistStyleContainer(count: count),
                ],
              ),
            ),
            Center(
              child: IconButton(
                onPressed: increaseCount,
                icon: Icon(Icons.add, size: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class TodoList extends StatelessWidget {
//   const TodoList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     //SizeBox.expand Takes whole available screen
//     //  Does it always fill the screen?
//     // Not automatically. It fills the space given by its parent.
//     // If the parent has limited size (like a Column, Row, or a Container with no size), SizedBox.expand() will only expand to that available space, not the whole screen.
//     return SizedBox.expand(
//       child: Container(
//         color: Colors.amber,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//               child: Column(
//                 // mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment:
//                     CrossAxisAlignment.center,
//                 children: [
//                   TodolistStyleContainer(),
//                   TodolistStyleContainer(),
//                   TodolistStyleContainer(),
//                 ],
//               ),
//             ),

//             Center(
//               child: IconButton(
//                 onPressed: () {
//                   print("Add a todo list");
//                 },
//                 icon: Icon(Icons.add, size: 50),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

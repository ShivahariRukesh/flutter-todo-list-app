import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodolistStyleContainer extends StatelessWidget {
  TodolistStyleContainer({int? count, Key? key})
    : this.count = count,
      super(key: key);
  final int? count;
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

          Expanded(
            child: Text(
              "This is a random text and a proper stateful widget and flow is yet to be implemented ${count != null ? count.toString() : 0}",
              maxLines: 1,
              textWidthBasis: TextWidthBasis.parent,
              overflow: TextOverflow.fade,
              softWrap: false,
              style: GoogleFonts.bricolageGrotesque(
                textStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
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

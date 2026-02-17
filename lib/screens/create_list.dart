import 'package:flutter/material.dart';
import 'package:todoapp/home.dart';
import 'package:todoapp/model/todolist_model.dart';

class CreateList extends StatelessWidget {
  const CreateList({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _subjectController =
        TextEditingController();

    final TextEditingController _descriptionController =
        TextEditingController();

    void createList() {
      print(
        '${_subjectController.text} and ${_descriptionController.text}',
      );
      // ListProvider().addATodoList(
      //   subject: _subjectController.text,
      //   description: _descriptionController.text,
      // );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (ctx) => const Home()),
      );
      // Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(title: Text('Create List')),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: Column(
            children: [
              TextField(
                controller: _subjectController,
                decoration: InputDecoration(
                  labelText: "Enter a subject",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: "Description",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => createList(),
                child: Text("Create"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

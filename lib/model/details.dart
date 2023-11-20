import 'package:flutter/material.dart';
import 'package:techcarreer_technopark_bootcamp/model/todo.dart';

class Details extends StatelessWidget {
  Details({super.key});
  

  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)!.settings.arguments as ToDoApp;
    return Scaffold(
      appBar: AppBar(title: Text(todo.title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(todo.description),
      )
    );
  }
}
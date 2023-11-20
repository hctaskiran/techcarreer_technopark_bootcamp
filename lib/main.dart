import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var title = const Text('Network Image');
    String image = 'https://picsum.photos/200/300';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: title),
        body: Center(
          child: Image.network(image)
        ),
      ),
    );
  }
}
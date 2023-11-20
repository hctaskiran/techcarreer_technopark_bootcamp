import 'dart:io';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'model/details.dart';
import 'model/todo.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

void main() {
  runApp(MyApp());
}

void closeApp() {
  exit(0);
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoTutorial(
        todos: List.generate(20, (index) => ToDoApp('Todo $index', 'Yapilacak is $index')),
      ),
      theme: ThemeData(
        appBarTheme: _appBarTheme(),
      ),
    );
  }

  AppBarTheme _appBarTheme() {
    double elev = 3;
    Color abColor = Colors.pink;
    return AppBarTheme(
      centerTitle: true,
      color: abColor,
      elevation: elev,
    );
  }
}

class ToDoTutorial extends StatelessWidget {
  final List<ToDoApp> todos;
  const ToDoTutorial({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ToDo List')),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Details(), settings: RouteSettings(arguments: todos[index])));
            },
          );
        },
      ),
    );
  }
}

class NavigationExample extends StatefulWidget {
  NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  final String midText = 'This is a Navigation Example';
  final barTitle = const Text('Navigation Example');
  final homeTitle = const Text('Home Page');
  final terminateTitle = const Text('Exit');
  final assetPath = const AssetImage("assets/images/duck.png");
  final String accName = 'Haktan Can Taskiran';
  final String accMail = 'haktancantaskiran@gmail.com';
  final terminateIcon = const Icon(Icons.warning_amber_outlined);
  final homeIcon = const Icon(Icons.home_filled);
  final pauseSec = const Duration(seconds: 3);
  final speedSec = const Duration(milliseconds: 100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: barTitle),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(accName),
              accountEmail: Text(accMail),
              currentAccountPicture: CircleAvatar(
                backgroundImage: assetPath,
              ),
            ),
            ListTile(
              title: homeTitle,
              leading: homeIcon,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: terminateTitle,
              leading: terminateIcon,
              onTap: () {
                closeApp();
              },
            )
          ],
        ),
      ),
      body: Center(
          child: AnimatedTextKit(
              repeatForever: true, pause: pauseSec, animatedTexts: [TyperAnimatedText(midText, speed: speedSec)])),
    );
  }
}

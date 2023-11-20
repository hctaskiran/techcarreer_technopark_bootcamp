import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:techcarreer_technopark_bootcamp/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

void closeApp() {
  exit(0);
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeWidget(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.pink,
          elevation: 3,
        )
      ),
      debugShowCheckedModeBanner: false,
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
              onTap:() {
                closeApp();
              },
            )
          ],
        ),
      ),
      body: Center(
        child: AnimatedTextKit(
          repeatForever: true,
          pause: pauseSec,
          animatedTexts: [
            TyperAnimatedText(
              midText, 
              speed: speedSec
            )
          ]
        )
      ),
    );
  }
}

// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.car_rental),
              title: const Text('Cars'),
              subtitle: const Text('Rent a Car'),
              trailing: const Icon(Icons.ads_click),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(
                      'Not available car',
                      style: TextStyle(color: Colors.white),
                    ),
                    duration: Duration(seconds: 2)));
              },
            ),
            ListTile(
              leading: const Icon(Icons.tv),
              title: const Text('TV'),
              subtitle: const Text('Rent a TV'),
              trailing: const Icon(Icons.ads_click),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(
                      'Not available TV to rent',
                      style: TextStyle(color: Colors.white),
                    ),
                    duration: Duration(seconds: 2)));
              },
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Houses'),
              subtitle: const Text('Rent daily house'),
              trailing: const Icon(Icons.ads_click),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    backgroundColor: Colors.green,
                    content: Text(
                      'Home found!',
                      style: TextStyle(color: Colors.white),
                    ),
                    duration: Duration(seconds: 2)));
                    
              },
            )
          ],
        ));
  }

  Container _main() {
    double _wt = 400;
    double _ht = 400;

    return Container(
      width: _wt,
      height: _ht,
      color: Colors.red,
    );
  }

  Container _yellow() {
    double _wt = 300;
    double _ht = 100;

    return Container(
      width: _wt,
      height: _ht,
      color: Colors.yellow,
      child: const Center(child: Text('Third')),
    );
  }

  Container _green() {
    double _wt = 200;
    double _ht = 100;

    return Container(
      width: _wt,
      height: _ht,
      color: Colors.green,
      child: const Center(child: Text('Second')),
    );
  }

  Container _blue() {
    double _wt = 100;
    double _ht = 100;

    return Container(
      width: _wt,
      height: _ht,
      color: Colors.blue,
      child: const Center(child: Text('First')),
    );
  }
}

import 'package:flutter/material.dart';

class StatefulDenemePage extends StatefulWidget {
  const StatefulDenemePage({super.key});

  @override
  State<StatefulDenemePage> createState() => _StatefulDenemePageState();
}

class _StatefulDenemePageState extends State<StatefulDenemePage> {
  @override
  void initState() {
    print('An example of stateful widget');
    super.initState();
  }

  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateful Widget Example'),),
    );
  }
}

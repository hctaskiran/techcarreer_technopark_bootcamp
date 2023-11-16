import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefulDenemePage extends StatefulWidget {
  const StatefulDenemePage({super.key, required this.title});
  final String title;
  @override
  State<StatefulDenemePage> createState() => _StatefulDenemePageState();
}

class _StatefulDenemePageState extends State<StatefulDenemePage> {
  @override
  void initState() {
    print("Example of Stateless Widget");
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
      appBar: AppBar(
        title: Text(widget.title)
      ),
      body: Center(
        child: Column(children: <Widget>[
          const SizedBox(height: 20,),
          const Text('Var Counter'),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headlineLarge,
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
        tooltip: 'Increase taps',
      ),
    );
  }
}

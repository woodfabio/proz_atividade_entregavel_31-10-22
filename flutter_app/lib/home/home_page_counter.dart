import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/my_fab_button.dart';

class HomePageCounter extends StatefulWidget {
  const HomePageCounter({
    super.key, 
    required this.title,
    });

  final String title;

  @override
  State<HomePageCounter> createState() => _HomePageCounterState();
}

class _HomePageCounterState extends State<HomePageCounter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),  
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [ 
          FloatingActionButton(
            onPressed: () {
              log('Olá');
              _decrementCounter();
              },
              tooltip: 'Decrement',
              backgroundColor: Colors.yellow,
            child: const Icon(Icons.remove)),       
          MyFabButton(onPressed: _incrementCounter),// This trailing comma makes auto-formatting nicer for build methods.
        ],
      ),
    );  
  }
}
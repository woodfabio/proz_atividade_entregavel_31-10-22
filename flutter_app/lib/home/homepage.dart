import 'package:flutter/material.dart';
import 'dart:developer';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

  class _MyHomePageState extends State<MyHomePage> {
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
          title: const Text('Test App'),
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
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed:() {
                log('Olá alunos');
                _decrementCounter();
              },
              tooltip:  'Decrement',
              backgroundColor: Colors.yellow,
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () {
                log('Olá alunos');
                _incrementCounter();
              },
              tooltip: 'Increment',
              backgroundColor: Colors.green,
              child: const Icon(Icons.add),
            )
          ],
        ),
      );
    }
  }

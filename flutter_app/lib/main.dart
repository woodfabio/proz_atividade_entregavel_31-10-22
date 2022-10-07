import 'package:flutter/material.dart';
import 'dart:developer';
import 'home/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,            
            children: [
              CustCon(
                size1: 300,
                size2 : 300,
                color: Colors.red
              ),
              CustCon(
                size1:210,
                size2 : 60,
                color: Colors.white
              ),
              CustCon(
                size1: 60,
                size2 : 210,
                color: Colors.white
              ),
            ],)
        )
      )
    );
  }
}

class CustCon extends StatelessWidget {
  final double size1;
  final double size2;
  final Color color;
  Widget? child;

  CustCon({
    Key? key,
    required this.size1,
    required this.size2,
    required this.color,
    this.child
  }) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size1,
      width: size2,
      color: color,
      child: child
    );
  }
}


import 'package:flutter/material.dart';

class CustomFig extends StatelessWidget {
  final double size1;
  final double size2;
  final Color color;
  final Widget? child;

  const CustomFig({
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
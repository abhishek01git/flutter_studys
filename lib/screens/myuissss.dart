import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myspotifiuis extends StatelessWidget {
  const Myspotifiuis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Container(
        color: Color.fromARGB(255, 154, 4, 137),
        height: 400,
        width: 500,
        child: Stack(
        ),
      ),
    ),
    );
  }
}
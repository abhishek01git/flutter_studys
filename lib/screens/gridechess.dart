import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyChess extends StatelessWidget {
  const MyChess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "CHESS BOARD",
          ),
          backgroundColor: Colors.blue),
      body:GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
        itemCount: 64,
        itemBuilder: (context, index) {
          return Container(
            color: (index + 1 )%2 == 0? Colors. grey : Colors.black,

          );
        },
      ),


    );
  }
}

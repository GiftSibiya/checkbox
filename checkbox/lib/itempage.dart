import 'package:checkbox/samples.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemViewPage extends StatelessWidget {
  ItemViewPage({super.key, required this.index});

  int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: shoes[index].color,
            child: Center(
                child: Text("You get item $index",
                    style: TextStyle(fontSize: 30)))),
      ),
    );
  }
}

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
        child: Text("You get item $index"),
      ),
    );
  }
}

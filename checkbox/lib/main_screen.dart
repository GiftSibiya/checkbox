import 'package:checkbox/list_element.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // ----- List of Tasks -----//
  List toDoList = [
    ["make stuff happen", false],
    ["cooking here", true],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return CheckList(
            taskName: toDoList[index][0],
            checked: toDoList[index][1],
            onChecked: (value) {
              checkBoxChanged(value, index);
            },
          );
        },
      ),
    );
  }
}

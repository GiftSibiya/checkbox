import 'package:flutter/material.dart';

class CheckList extends StatelessWidget {
  bool checked;
  String taskName;
  Function(bool?)? onChecked;
  CheckList(
      {super.key,
      required this.checked,
      required this.taskName,
      required this.onChecked});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Checkbox(value: checked, onChanged: onChecked),
            Text(taskName)
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30, top: 30),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            //task name
            Text(
              taskName,
              style: TextStyle(
                  fontSize: 17,
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
            //checkbox
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.black,
            )
          ],
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 115, 227, 119),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TaskList extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function(bool?) onChanged;
  final Function()? onLongPressCallBack;
  const TaskList({
    super.key,
    required this.isChecked,
    required this.taskTile,
    required this.onChanged,
    this.onLongPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: onChanged,
      ),
      onLongPress: onLongPressCallBack,
      hoverColor: Colors.blueAccent,
    );
  }
}

import 'package:flutter/material.dart';
import 'task_list.dart';
import 'package:todey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskList(
              taskTile: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              onChanged: (bool? checkboxState) {
                taskData.updateTask(taskData.tasks[index]);
              },
              onLongPressCallBack: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

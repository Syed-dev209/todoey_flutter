import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier {

  List<Task> _tasks =[
    Task(name:'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy ciggerattes')
  ];
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
 }

  int get taskCount{
    return _tasks.length;

  }
  void addTask(String taskTitle){
    final task=Task(name: taskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task)
  {
    task.toggleDone();
    notifyListeners();
  }
 void deleteTask(int index)
 {
   _tasks.removeAt(index);
   notifyListeners();
 }
}
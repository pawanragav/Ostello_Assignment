import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  List<bool> _completedList = [];

  TaskProvider(List<String> contents) {
    _completedList = List.filled(contents.length, false);
  }

  List<bool> get completedList => _completedList;

  void markTaskCompleted(int index) {
    _completedList[index] = true;
    notifyListeners();
  }

  void markTaskIncomplete(int index) {
    _completedList[index] = false;
    notifyListeners();
  }
}

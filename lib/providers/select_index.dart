import 'package:flutter/material.dart';

class SelectedAnswerProvider with ChangeNotifier {
  final Map<int, int> _selectedAnswers = {};

  Map<int, int> get selectedAnswers => _selectedAnswers;

  void selectAnswer(int questionIndex, int answerIndex) {
    _selectedAnswers[questionIndex] = answerIndex;
    notifyListeners();
  }
}

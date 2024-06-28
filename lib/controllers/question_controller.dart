import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/services/quiz_firestore.dart';

class QuestionController extends ChangeNotifier {
  final _quizFirestore = QuizFirestore();

  Stream<QuerySnapshot> get list {
    return _quizFirestore.getQuestions();
  }

  void addQuestion(List<String> answers, int correct, String question) {
    _quizFirestore.addQuestion(answers, correct, question);
    notifyListeners();
  }
}

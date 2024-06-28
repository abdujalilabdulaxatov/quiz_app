import 'package:cloud_firestore/cloud_firestore.dart';

class Question {
  final String id;
  final String question;
  final List<String> answers;
  final int correct;

  Question({
    required this.id,
    required this.question,
    required this.answers,
    required this.correct,
  });

  factory Question.fromJson(QueryDocumentSnapshot query) {
    return Question(
      id: query.id,
      question: query['question'],
      answers: List<String>.from(query['answers']),
      correct: query['correct'],
    );
  }
}

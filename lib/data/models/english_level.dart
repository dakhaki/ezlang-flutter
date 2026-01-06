// The high-level CEFR classification
import 'package:ezlang/data/models/topic.dart';

class EnglishLevel {
  final String id;
  final String title; // Beginner, Intermediate, etc.
  final String cefrCode; // A1, A2, B1
  final List<Topic> topics;

  EnglishLevel({
    required this.id,
    required this.title,
    required this.cefrCode,
    required this.topics,
  });
}

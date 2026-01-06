// A specific lesson (e.g., "Ordering Food", "Past Tense")
import 'package:ezlang/data/models/exercise.dart';

class SubTopic {
  final String id;
  final String title;
  final List<Exercise> exercises;

  SubTopic({required this.id, required this.title, required this.exercises});
}

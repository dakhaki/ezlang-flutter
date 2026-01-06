// A specific category (e.g., "Daily Life", "Business English")
import 'package:ezlang/data/models/sub_topic.dart';

class Topic {
  final String id;
  final String title;
  final String iconAsset;
  final List<SubTopic> subTopics;
  final bool isPremium; // Used for your Freemium model

  Topic({
    required this.id,
    required this.title,
    required this.iconAsset,
    required this.subTopics,
    this.isPremium = false,
  });
}

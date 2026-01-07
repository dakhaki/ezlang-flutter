class EnglishLevel {
  final String id;
  final String title;
  final String cefrCode;
  final String description;
  final String imageUrl;
  final String imageLocalAsset;
  final String backgroundColorHex;
  final List<Topic> topics;

  EnglishLevel({
    required this.id,
    required this.title,
    required this.cefrCode,
    required this.description,
    required this.imageUrl,
    required this.imageLocalAsset,
    required this.backgroundColorHex,
    required this.topics,
  });
}

class Topic {
  final String id;
  final String title;
  final String iconAsset;
  final List<SubTopic> subTopics;
  final bool isPremium;

  Topic({
    required this.id,
    required this.title,
    required this.iconAsset,
    required this.subTopics,
    this.isPremium = false,
  });
}

class SubTopic {
  final String id;
  final String title;
  final int materialCount;
  final int exerciseCount;

  SubTopic({
    required this.id,
    required this.title,
    required this.materialCount,
    required this.exerciseCount,
  });
}

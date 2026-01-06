class EnglishLevel {
  final String id;
  final String title;
  final String cefrCode;
  final String description;
  final String imageUrl;
  final List<Topic> topics;

  EnglishLevel({
    required this.id,
    required this.title,
    required this.cefrCode,
    required this.description,
    required this.imageUrl,
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
  final List<LearningMaterial> materials;
  final List<Exercise> exercises;

  SubTopic({
    required this.id,
    required this.title,
    required this.materials,
    required this.exercises,
  });
}

sealed class LearningMaterial {
  final String id;
  final String title;

  LearningMaterial({required this.id, required this.title});
}

class VideoMaterial extends LearningMaterial {
  final String url;
  VideoMaterial({required super.id, required super.title, required this.url});
}

class ArticleMaterial extends LearningMaterial {
  final String content;
  ArticleMaterial({
    required super.id,
    required super.title,
    required this.content,
  });
}

class PdfMaterial extends LearningMaterial {
  final String url;
  PdfMaterial({required super.id, required super.title, required this.url});
}

class HtmlMaterial extends LearningMaterial {
  final String content;
  HtmlMaterial({
    required super.id,
    required super.title,
    required this.content,
  });
}

sealed class Exercise {
  final String id;
  final String prompt;

  Exercise({required this.id, required this.prompt});
}

class MultipleChoice extends Exercise {
  final List<String> options;
  final int correctIndex;

  MultipleChoice({
    required super.id,
    required super.prompt,
    required this.options,
    required this.correctIndex,
  });
}

class TranslateSentence extends Exercise {
  final String sourceText;
  final String targetText;

  TranslateSentence({
    required super.id,
    required super.prompt,
    required this.sourceText,
    required this.targetText,
  });
}

class AudioMatch extends Exercise {
  final String correctWord;

  AudioMatch({
    required super.id,
    required super.prompt,
    required this.correctWord,
  });
}

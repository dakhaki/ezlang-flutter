class LessonContent {
  final String id;
  final List<LearningMaterial> materials;
  final List<Exercise> exercises;

  LessonContent({
    required this.id,
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

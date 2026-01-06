class LevelEntity {
  final String id;
  final String title;
  final String cefr;
  final String description;
  final String imageUrl;
  final List<String> topics;

  const LevelEntity({
    required this.id,
    required this.title,
    required this.cefr,
    required this.description,
    required this.imageUrl,
    required this.topics,
  });
}

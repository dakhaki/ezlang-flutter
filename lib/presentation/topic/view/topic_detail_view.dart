import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/presentation/topic/view_model/topic_detail_view_model.dart';

class TopicDetailPage extends GetView<TopicDetailViewModel> {
  const TopicDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final topic = controller.topic;
    return Scaffold(
      appBar: AppBar(title: Text(topic.title)),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: topic.subTopics.length,
        itemBuilder: (context, index) {
          final subTopic = topic.subTopics[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              title: Text(
                subTopic.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('${subTopic.exercises.length} Exercises'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => controller.startLesson(subTopic),
            ),
          );
        },
      ),
    );
  }
}

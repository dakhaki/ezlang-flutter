import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/presentation/topic/view_model/topic_detail_view_model.dart';

class TopicDetailPage extends GetView<TopicDetailViewModel> {
  const TopicDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final topic = controller.topic;
    return Scaffold(
      appBar: AppBar(title: Text(topic.title), centerTitle: false),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: topic.subTopics.length,
        itemBuilder: (context, index) {
          final subTopic = topic.subTopics[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.school,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  title: Text(
                    subTopic.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '${subTopic.exerciseCount} Exercises • ${subTopic.materialCount} Materials',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton.icon(
                        onPressed: () => controller.openMaterials(subTopic),
                        icon: const Icon(Icons.library_books),
                        label: const Text('Materials'),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton.icon(
                        onPressed: () => controller.openExercise(subTopic),
                        icon: const Icon(Icons.play_arrow),
                        label: const Text('Exercises'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

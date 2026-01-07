import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/presentation/lesson/view_model/lesson_detail_view_model.dart';

class LessonDetailPage extends GetView<LessonDetailViewModel> {
  const LessonDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final level = controller.level;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(level.title, style: const TextStyle(fontSize: 16)),
              background: CachedNetworkImage(
                imageUrl: level.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Chip(
                        label: Text(level.cefrCode),
                        backgroundColor: Theme.of(
                          context,
                        ).primaryColor.withOpacity(0.1),
                        labelStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Overview',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    level.description,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Topics Covered',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  ...level.topics.map(
                    (topic) => Card(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: const Icon(Icons.book, color: Colors.black54),
                        ),
                        title: Text(topic.title),
                        subtitle: Text('${topic.subTopics.length} Lessons'),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () => controller.navigateToTopic(topic),
                      ),
                    ),
                  ),
                  // const SizedBox(height: 32),
                  SafeArea(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: controller.completeLevel,
                        icon: const Icon(Icons.check),
                        label: const Text('Mark as Completed'),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

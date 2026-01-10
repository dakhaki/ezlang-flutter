import 'package:ezlang/domain/entities/curriculum_entity.dart';
import 'package:ezlang/presentation/home/view_model/home_view_model.dart';
import 'package:ezlang/presentation/widgets/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LevelCard extends StatelessWidget {
  final EnglishLevel level;
  final HomeViewModel controller;

  const LevelCard({super.key, required this.level, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: BouncingWidget(
        onTap: () => controller.navigateToLesson(level),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: Container(
                height: 120,
                width: double.infinity,
                color: Color(int.parse(level.backgroundColorHex, radix: 16)),
                child: Image.asset(level.imageLocalAsset, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Hero(
                        tag: level.id,
                        child: Material(
                          type: MaterialType.transparency,
                          child: Text(
                            level.title,
                            style: Theme.of(context).textTheme.headlineMedium
                                ?.copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                      Obx(() {
                        final isCompleted = controller.completedLevels.contains(
                          level.id,
                        );
                        return Icon(
                          isCompleted
                              ? Icons.check_circle
                              : Icons.arrow_forward_ios,
                          color: isCompleted ? Colors.green : Colors.grey,
                          size: 20,
                        );
                      }),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Text(
                  //   '${level.title}', // '${level.title} [${level.cefrCode}]',
                  //   style: Theme.of(context).textTheme.titleLarge,
                  // ),
                  // const SizedBox(height: 4),
                  Text(
                    level.description,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    children: level.topics
                        .map(
                          (t) => Hero(
                            tag: 'topic_${t.id}',
                            child: ActionChip(
                              avatar: const Icon(Icons.topic, size: 16),
                              label: Text(
                                t.title,
                                style: const TextStyle(fontSize: 14),
                              ),
                              onPressed: () => controller.navigateToTopic(t),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

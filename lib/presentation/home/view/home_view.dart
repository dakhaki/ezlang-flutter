import 'package:cached_network_image/cached_network_image.dart';
import 'package:confetti/confetti.dart';
import 'package:ezlang/core/theme/app_palette.dart';
import 'package:ezlang/core/routes/routes.dart';
import 'package:ezlang/presentation/widgets/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/presentation/home/view_model/home_view_model.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';

class HomePage extends GetView<HomeViewModel> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('eZlang Curriculum'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30),
          child: Obx(
            () => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.local_fire_department,
                    color: AppPalette.orangeAccent,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${controller.streak.value} Day Streak',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.celebration),
            onPressed: controller.celebrate,
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => Get.toNamed(PageTo.profile),
          ),
        ],
      ),
      body: Stack(
        children: [
          controller.obx(
            (levels) => ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: levels?.length ?? 0,
              itemBuilder: (context, index) {
                final level = levels![index];
                return _LevelCard(level: level, controller: controller);
              },
            ),
            onLoading: const Center(child: CircularProgressIndicator()),
            onError: (error) => Center(child: Text('Error: $error')),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: controller.confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: false,
            ),
          ),
        ],
      ),
    );
  }
}

class _LevelCard extends StatelessWidget {
  final EnglishLevel level;
  final HomeViewModel controller;

  const _LevelCard({required this.level, required this.controller});

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
              child: CachedNetworkImage(
                imageUrl: level.imageUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  height: 120,
                  color: Colors.grey[300],
                  child: const Center(child: Icon(Icons.image)),
                ),
                errorWidget: (context, url, error) => Container(
                  height: 120,
                  color: Colors.grey[300],
                  child: const Center(child: Icon(Icons.error)),
                ),
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
                      Text(
                        level.cefrCode,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
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
                  Text(
                    level.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    level.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    children: level.topics
                        .map(
                          (t) => Chip(
                            avatar: const Icon(Icons.topic, size: 16),
                            label: Text(
                              t.title,
                              style: const TextStyle(fontSize: 10),
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

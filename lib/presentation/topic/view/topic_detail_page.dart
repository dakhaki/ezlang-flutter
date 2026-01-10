import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/presentation/topic/view_model/topic_detail_view_model.dart';
import 'package:ezlang/presentation/widgets/animated_list_item.dart';

class TopicDetailPage extends GetView<TopicDetailViewModel> {
  const TopicDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final topic = controller.topic;
    return Scaffold(
      appBar: AppBar(
        title: Hero(
          tag: 'topic_${topic.id}',
          flightShuttleBuilder:
              (
                flightContext,
                animation,
                flightDirection,
                fromHeroContext,
                toHeroContext,
              ) {
                return Material(
                  color: Colors.transparent,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    alignment: Alignment.centerLeft,
                    child: (toHeroContext.widget as Hero).child,
                  ),
                );
              },
          child: Material(
            color: Colors.transparent,
            child: Text(
              topic.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: topic.subTopics.length,
          itemBuilder: (context, index) {
            final subTopic = topic.subTopics[index];
            return AnimatedListItem(
              index: index,
              child: _TopicCard(
                index: index,
                subTopic: subTopic,
                controller: controller,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _TopicCard extends StatefulWidget {
  final int index;
  final dynamic subTopic;
  final TopicDetailViewModel controller;

  const _TopicCard({
    required this.index,
    required this.subTopic,
    required this.controller,
  });

  @override
  State<_TopicCard> createState() => _TopicCardState();
}

class _TopicCardState extends State<_TopicCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _btnController;
  late Animation<double> _btnScaleAnimation;

  @override
  void initState() {
    super.initState();
    _btnController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _btnScaleAnimation = CurvedAnimation(
      parent: _btnController,
      curve: Curves.elasticOut,
    );

    // Stagger the button animation slightly after the card appears
    Future.delayed(Duration(milliseconds: (widget.index * 100) + 300), () {
      if (mounted) _btnController.forward();
    });
  }

  @override
  void dispose() {
    _btnController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
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
              child: Icon(Icons.school, color: Theme.of(context).primaryColor),
            ),
            title: Text(
              widget.subTopic.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '${widget.subTopic.exerciseCount} Exercises • ${widget.subTopic.materialCount} Materials',
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
                ScaleTransition(
                  scale: _btnScaleAnimation,
                  child: TextButton.icon(
                    onPressed: () =>
                        widget.controller.openMaterials(widget.subTopic),
                    icon: const Icon(Icons.library_books),
                    label: const Text('Materials'),
                  ),
                ),
                const SizedBox(width: 8),
                ScaleTransition(
                  scale: _btnScaleAnimation,
                  child: ElevatedButton.icon(
                    onPressed: () =>
                        widget.controller.openExercise(widget.subTopic),
                    icon: const Icon(Icons.play_arrow),
                    label: const Text('Exercises'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

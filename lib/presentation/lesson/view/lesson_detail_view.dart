import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/presentation/lesson/view_model/lesson_detail_view_model.dart';

class LessonDetailPage extends GetView<LessonDetailViewModel> {
  const LessonDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final level = controller.level;
    final color = Color(int.parse(level.backgroundColorHex, radix: 16));
    final asset = level.imageLocalAsset;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            backgroundColor: color,
            leading: const BackButton(color: Colors.black),
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(
              //   level.title,
              //   style: const TextStyle(fontSize: 16, color: Colors.black),
              // ),
              background: Hero(
                tag: level.id,
                child: Container(
                  color: color,
                  padding: const EdgeInsets.all(32),
                  child: Image.asset(asset, fit: BoxFit.contain),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row(
                  //   children: [
                  //     Chip(
                  //       label: Text(level.cefrCode),
                  //       backgroundColor: Theme.of(
                  //         context,
                  //       ).primaryColor.withOpacity(0.1),
                  //       labelStyle: TextStyle(
                  //         color: Theme.of(context).primaryColor,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Text(
                    level.title,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // const SizedBox(height: 16),
                  // Text(
                  //   'Overview',
                  //   style: Theme.of(context).textTheme.headlineSmall,
                  // ),
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
                  ...level.topics.asMap().entries.map((entry) {
                    final index = entry.key;
                    final topic = entry.value;
                    return _AnimatedTopicCard(
                      index: index,
                      child: Card(
                        margin: const EdgeInsets.only(bottom: 16),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            child: const Icon(
                              Icons.book,
                              color: Colors.black54,
                            ),
                          ),
                          title: Text(topic.title),
                          subtitle: Text('${topic.subTopics.length} Lessons'),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                          onTap: () => controller.navigateToTopic(topic),
                        ),
                      ),
                    );
                  }),
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

class _AnimatedTopicCard extends StatefulWidget {
  final int index;
  final Widget child;

  const _AnimatedTopicCard({required this.index, required this.child});

  @override
  State<_AnimatedTopicCard> createState() => _AnimatedTopicCardState();
}

class _AnimatedTopicCardState extends State<_AnimatedTopicCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    Future.delayed(Duration(milliseconds: widget.index * 100), () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(position: _offsetAnimation, child: widget.child),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gpt_markdown/gpt_markdown.dart';

class ArticlePage extends StatelessWidget {
  final String title;
  final String content;

  const ArticlePage({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: false),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: GptMarkdown(
                content,
                textScaler: TextScaler.linear(1.0),
                // style: Theme.of(
                //   context,
                // ).textTheme.bodyLarge?.copyWith(height: 1.8, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

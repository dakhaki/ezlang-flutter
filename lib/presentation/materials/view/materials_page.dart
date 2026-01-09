import 'package:ezlang/presentation/widgets/error_view.dart';
import 'package:ezlang/presentation/widgets/loading_indicator.dart';
import 'package:ezlang/presentation/widgets/animated_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/domain/entities/lesson_content_entity.dart';
import 'package:ezlang/presentation/materials/view_model/materials_view_model.dart';

class MaterialsPage extends GetView<MaterialsViewModel> {
  const MaterialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final subTopic = controller.subTopic;
    return Scaffold(
      appBar: AppBar(
        title: Text('${subTopic.title} Materials'),
        centerTitle: false,
      ),
      body: SafeArea(
        child: controller.obx(
          (content) => content!.materials.isEmpty
              ? const Center(
                  child: Text("No materials available for this lesson."),
                )
              : ListView.builder(
                  padding: const EdgeInsets.fromLTRB(12, 8, 12, 24),
                  itemCount: content.materials.length,
                  itemBuilder: (context, index) {
                    final material = content.materials[index];
                    IconData icon;
                    if (material is VideoMaterial) {
                      icon = Icons.play_circle_fill;
                    } else if (material is ArticleMaterial) {
                      icon = Icons.article;
                    } else if (material is PdfMaterial) {
                      icon = Icons.picture_as_pdf;
                    } else if (material is AudioMaterial) {
                      icon = Icons.audiotrack;
                    } else {
                      icon = Icons.web;
                    }

                    return AnimatedListItem(
                      index: index,
                      child: Card(
                        child: ListTile(
                          leading: Icon(
                            icon,
                            size: 32,
                            color: Theme.of(context).primaryColor,
                          ),
                          title: Text(material.title),
                          subtitle: Text(
                            material.runtimeType.toString().replaceAll(
                              'Material',
                              '',
                            ),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                          onTap: () => controller.openMaterial(material),
                        ),
                      ),
                    );
                  },
                ),
          onLoading: const Center(child: LoadingIndicator()),
          onError: (error) => ErrorView(
            message: error ?? 'Failed to load materials',
            onRetry: controller.fetchContent,
          ),
        ),
      ),
    );
  }
}

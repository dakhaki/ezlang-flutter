import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';
import 'package:ezlang/presentation/materials/view_model/materials_view_model.dart';

class MaterialsPage extends GetView<MaterialsViewModel> {
  const MaterialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final subTopic = controller.subTopic;
    return Scaffold(
      appBar: AppBar(title: Text('${subTopic.title} Materials')),
      body: subTopic.materials.isEmpty
          ? const Center(child: Text("No materials available for this lesson."))
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: subTopic.materials.length,
              itemBuilder: (context, index) {
                final material = subTopic.materials[index];
                IconData icon;
                if (material is VideoMaterial) {
                  icon = Icons.play_circle_fill;
                } else if (material is ArticleMaterial) {
                  icon = Icons.article;
                } else if (material is PdfMaterial) {
                  icon = Icons.picture_as_pdf;
                } else {
                  icon = Icons.web;
                }

                return Card(
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
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () => controller.openMaterial(material),
                  ),
                );
              },
            ),
    );
  }
}

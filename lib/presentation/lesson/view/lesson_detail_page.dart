// import 'package:ezlang/domain/entities/curriculum_entity.dart';
// import 'package:ezlang/presentation/home/view_model/home_view_model.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class LessonDetailPage extends StatelessWidget {
//   const LessonDetailPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final EnglishLevel level = Get.arguments as EnglishLevel;
//     final HomeViewModel homeController = Get.find();
//     final index = homeController.state?.indexOf(level) ?? 0;

//     const assets = [
//       'assets/images/egg.png',
//       'assets/images/larva.png',
//       'assets/images/pupa.png',
//       'assets/images/adult.png',
//     ];
//     final asset = assets[index % assets.length];

//     const colors = [
//       Color(0xFFE3F2FD), // Light Blue
//       Color(0xFFE8F5E9), // Light Green
//       Color(0xFFFFF3E0), // Light Orange
//       Color(0xFFF3E5F5), // Light Purple
//     ];
//     final color = colors[index % colors.length];

//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             expandedHeight: 250,
//             pinned: true,
//             backgroundColor: color,
//             leading: const BackButton(color: Colors.black),
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text(
//                 level.title,
//                 style: const TextStyle(color: Colors.black),
//               ),
//               background: Hero(
//                 tag: level.id,
//                 child: Container(
//                   color: color,
//                   padding: const EdgeInsets.all(32),
//                   child: Image.asset(asset, fit: BoxFit.contain),
//                 ),
//               ),
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate((context, index) {
//               final topic = level.topics[index];
//               return ListTile(
//                 title: Text(topic.title),
//                 subtitle: Text(topic.description),
//                 leading: const Icon(Icons.topic),
//                 onTap: () {
//                   // Navigate to subtopics or materials
//                 },
//               );
//             }, childCount: level.topics.length),
//           ),
//         ],
//       ),
//     );
//   }
// }

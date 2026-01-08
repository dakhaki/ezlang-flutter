import 'package:confetti/confetti.dart';
// import 'package:ezlang/core/theme/app_palette.dart';
import 'package:ezlang/core/routes/routes.dart';
import 'package:ezlang/presentation/home/view/widgets/level_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/presentation/home/view_model/home_view_model.dart';

class HomePage extends GetView<HomeViewModel> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('eZlang'),
        centerTitle: false,
        // bottom: PreferredSize(
        //   preferredSize: const Size.fromHeight(30),
        //   child: Obx(
        //     () => Padding(
        //       padding: const EdgeInsets.only(bottom: 8.0),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           const Icon(
        //             Icons.local_fire_department,
        //             color: AppPalette.orangeAccent,
        //           ),
        //           const SizedBox(width: 4),
        //           Text(
        //             '${controller.streak.value} Day Streak',
        //             style: const TextStyle(fontWeight: FontWeight.bold),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        actions: [
          IconButton(
            icon: Image.asset('assets/images/logo_small.png', height: 28),
            onPressed: () => Get.toNamed(PageTo.profile),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            controller.obx(
              (levels) => ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: levels?.length ?? 0,
                itemBuilder: (context, index) {
                  final level = levels![index];
                  return LevelCard(level: level, controller: controller);
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
      ),
    );
  }
}

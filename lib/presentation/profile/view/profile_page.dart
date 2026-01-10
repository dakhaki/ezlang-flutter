import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ezlang/core/theme/app_palette.dart';
import 'package:ezlang/core/theme/theme_controller.dart';
import 'package:ezlang/presentation/materials/view/web_view_page.dart';
import 'package:ezlang/presentation/profile/view_model/profile_view_model.dart';
import 'package:ezlang/presentation/widgets/sticker_widget.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:share_plus/share_plus.dart';

class ProfilePage extends GetView<ProfileViewModel> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(
          // color: AppPalette.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Profile Header
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: AppPalette.primary.withOpacity(0.1),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppPalette.skyBlue, width: 4),
                      ),
                      child: const CircleAvatar(
                        radius: 40,
                        backgroundColor: AppPalette.skyBlue,
                        child: Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Learning Champion',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppPalette.primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: AppPalette.orangeAccent.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Obx(
                        () => Text(
                          'Time: ${controller.formattedTime}',
                          style: const TextStyle(
                            color: AppPalette.orangeAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'My Stickers Collection',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              Obx(
                () => controller.stickers.isEmpty
                    ? Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(32.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.grey.shade200),
                        ),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.star_border_rounded,
                              size: 48,
                              color: Colors.grey,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Complete lessons to earn stickers!',
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    : GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 60,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                            ),
                        itemCount: controller.stickers.length,
                        itemBuilder: (context, index) {
                          return const StickerWidget(
                            icon: Icons.star_rounded,
                            animate: true,
                            // label: 'Star',
                          );
                        },
                      ),
              ),

              const SizedBox(height: 32),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Settings',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  clipBehavior: Clip.hardEdge,
                  child: GetBuilder<ThemeController>(
                    builder: (controller) {
                      return SwitchListTile(
                        title: const Text(
                          'Dark Mode',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text('Switch ON to enable dark theme'),
                        secondary: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.purple.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            controller.isDarkMode
                                ? Icons.nightlight_round
                                : Icons.wb_sunny_rounded,
                            color: Colors.purple,
                          ),
                        ),
                        value: controller.isDarkMode,
                        onChanged: controller.changeTheme,
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 32),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'More Info',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              _buildOptionTile(
                context,
                icon: Icons.info_rounded,
                title: 'Why CEFR?',
                color: Colors.teal,
                onTap: () {
                  showGeneralDialog(
                    context: context,
                    barrierDismissible: true,
                    barrierLabel: MaterialLocalizations.of(
                      context,
                    ).modalBarrierDismissLabel,
                    barrierColor: Colors.black54,
                    transitionDuration: const Duration(milliseconds: 500),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        SafeArea(
                          child: AlertDialog(
                            backgroundColor: Theme.of(context).cardColor,
                            surfaceTintColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            insetPadding: const EdgeInsets.all(16),
                            title: const Text(
                              'Why CEFR?',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            content: SizedBox(
                              width: double.maxFinite,
                              child: FutureBuilder<String>(
                                future: rootBundle.loadString(
                                  'assets/data/misc.json',
                                ),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    final data = json.decode(snapshot.data!);
                                    return SingleChildScrollView(
                                      child: GptMarkdown(
                                        data['why_cerf'] ?? '',
                                        // style: Theme.of(
                                        //   context,
                                        // ).textTheme.bodyMedium,
                                      ),
                                    );
                                  }
                                  return const SizedBox(
                                    height: 100,
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                },
                              ),
                            ),
                            actions: [
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () => Get.back(),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.teal,
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 16,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: const Text('Got it'),
                                ),
                              ),
                            ],
                          ),
                        ),
                    transitionBuilder:
                        (context, animation, secondaryAnimation, child) {
                          return ScaleTransition(
                            scale: CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeOutBack,
                            ),
                            child: child,
                          );
                        },
                  );
                },
              ),
              _buildOptionTile(
                context,
                icon: Icons.privacy_tip_rounded,
                title: 'Privacy Policy',
                color: Colors.purple,
                onTap: () => Get.to(
                  () => const WebViewPage(
                    url:
                        'https://sites.google.com/site/normsdev/privacy-policy',
                    title: 'Privacy Policy',
                  ),
                ),
              ),
              _buildOptionTile(
                context,
                icon: Icons.star_rate_rounded,
                title: 'Rate App',
                color: Colors.orange,
                onTap: () {
                  // TODO: Integrate actual app rating functionality
                  Get.snackbar(
                    'Rate App',
                    'Thank you for your support!',
                    backgroundColor: Colors.orange.withOpacity(0.1),
                    colorText: Colors.orange,
                  );
                },
              ),
              _buildOptionTile(
                context,
                icon: Icons.share_rounded,
                title: 'Share App',
                color: Colors.blue,
                onTap: () {
                  // TODO: Replace with actual app link
                  Share.share(
                    'Check out eZlang! It\'s a great app for learning English.',
                  );
                },
              ),
              _buildOptionTile(
                context,
                icon: Icons.feedback_rounded,
                title: 'Feedback',
                color: Colors.green,
                onTap: () => Get.to(
                  () => const WebViewPage(
                    // TODO: Replace with actual feedback form URL
                    url: 'https://forms.google.com',
                    title: 'Feedback',
                  ),
                ),
              ),
              const SizedBox(height: 24),
              FutureBuilder<PackageInfo>(
                future: PackageInfo.fromPlatform(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) return const SizedBox();
                  return Text(
                    'Version ${snapshot.data!.version}',
                    style: TextStyle(color: Colors.grey[400], fontSize: 12),
                  );
                },
              ),
              // const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.hardEdge,
        child: ListTile(
          leading: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color),
          ),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.grey,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}

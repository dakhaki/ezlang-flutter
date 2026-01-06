import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eZlang/core/theme/app_palette.dart';
import 'package:eZlang/presentation/home/view_model/home_view_model.dart';

class HomePage extends GetView<HomeViewModel> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(color: AppPalette.primaryAccent, fontSize: 24),
        ),
      ),
    );
  }
}

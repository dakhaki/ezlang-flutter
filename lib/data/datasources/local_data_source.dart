import 'dart:convert';
import 'package:ezlang/core/error/failures.dart';
import 'package:ezlang/data/models/lesson_content_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:ezlang/data/models/curriculum_model.dart';

abstract class LocalDataSource {
  Future<CurriculumModel> getCurriculum();
  Future<LessonContentModel> getLessonContent(String subTopicId);
}

class LocalDataSourceImpl implements LocalDataSource {
  @override
  Future<CurriculumModel> getCurriculum() async {
    try {
      final jsonString = await rootBundle.loadString(
        'assets/data/curriculum.json',
      );
      // Use compute to parse JSON in a separate isolate for heavy computation
      return await compute(_parseCurriculum, jsonString);
    } catch (e) {
      throw const AssetFailure('Failed to load curriculum data');
    }
  }

  static CurriculumModel _parseCurriculum(String jsonString) {
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return CurriculumModel.fromJson(jsonMap);
  }

  @override
  Future<LessonContentModel> getLessonContent(String subTopicId) async {
    try {
      final jsonString = await rootBundle.loadString(
        'assets/data/lessons/$subTopicId.json',
      );
      return await compute(_parseLessonContent, jsonString);
    } catch (e) {
      // Fallback for missing files during development
      return LessonContentModel(id: subTopicId, exercises: [], materials: []);
    }
  }

  static LessonContentModel _parseLessonContent(String jsonString) {
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return LessonContentModel.fromJson(jsonMap);
  }
}

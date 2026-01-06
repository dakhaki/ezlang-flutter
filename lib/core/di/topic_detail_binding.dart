import 'package:get/get.dart';
import 'package:ezlang/presentation/topic/view_model/topic_detail_view_model.dart';

class TopicDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopicDetailViewModel>(() => TopicDetailViewModel());
  }
}

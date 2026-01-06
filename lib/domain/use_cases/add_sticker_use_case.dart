import 'package:ezlang/domain/repositories/progress_repository.dart';

class AddStickerUseCase {
  final ProgressRepository repository;
  AddStickerUseCase(this.repository);

  Future<void> call(String stickerId) => repository.addSticker(stickerId);
}

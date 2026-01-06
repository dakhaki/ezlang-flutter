// sealed class Exercise {
//   final String id;
//   final String prompt;

//   Exercise(this.id, this.prompt);
// }

// class MultipleChoice extends Exercise {
//   final List<String> options;
//   final int correctIndex;

//   MultipleChoice({
//     required String id,
//     required String prompt,
//     required this.options,
//     required this.correctIndex,
//   }) : super(id, prompt);
// }

// class TranslateSentence extends Exercise {
//   final String sourceText;
//   final String targetText;

//   TranslateSentence({
//     required String id,
//     required String prompt,
//     required this.sourceText,
//     required this.targetText,
//   }) : super(id, prompt);
// }

// class AudioMatch extends Exercise {
//   final String audioUrl;
//   final String correctWord;

//   AudioMatch({
//     required String id,
//     required String prompt,
//     required this.audioUrl,
//     required this.correctWord,
//   }) : super(id, prompt);
// }

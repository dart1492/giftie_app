import 'dart:convert';

/// Riddle data class
class Riddle {
  String title;
  String question;
  String answer;

  /// Riddle data class
  Riddle({
    required this.title,
    required this.question,
    required this.answer,
  });

  Riddle copyWith({
    String? title,
    String? question,
    String? answer,
  }) {
    return Riddle(
      title: title ?? this.title,
      question: question ?? this.question,
      answer: answer ?? this.answer,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'content': question,
      'answer': answer,
    };
  }

  factory Riddle.fromMap(Map<String, dynamic> map) {
    return Riddle(
      title: map['title'] as String,
      question: map['question'] as String,
      answer: map['answer'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Riddle.fromJson(String source) =>
      Riddle.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Riddle(title: $title, content: $question, answer: $answer)';
}

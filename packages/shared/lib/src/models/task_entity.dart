import 'package:json_annotation/json_annotation.dart';

part 'task_entity.g.dart';

@JsonSerializable()
class Task {
  final String id;
  final String title;
  final bool isCompleted;

  const Task({
    required this.id,
    required this.title,
    this.isCompleted = false,
  });

  // From JSON
  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  // To JSON
  Map<String, dynamic> toJson() => _$TaskToJson(this);

  // Copy with
  Task copyWith({
    String? id,
    String? title,
    bool? isCompleted,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
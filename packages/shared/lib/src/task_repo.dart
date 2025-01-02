import 'models/index.dart';

abstract interface class TaskRepo{
  Future<List<Task>> fetchAllTasks();
  List<Task> getTaskById(String id);
  Future<Task> addTask(Task task);
  Future<Task> updateTask(Task task);
  Future<Task> deleteTask(Task task);
}
// ignore_for_file: public_member_api_docs, sort_constructors_first
class Task {
  final String name;
  bool isActive;
  Task({
    required this.name,
    required this.isActive,
  });

  void toggleStatus() {
    isActive = !isActive;
  }
}

class TodoModel {
  // Variable
  final int id;
  final String title;
  final String description;
  final bool isDone;
  // Constractor
  TodoModel({
    required this.id,
    required this.title,
    required this.description,
    required this.isDone,
  });
  // Methods

  TodoModel copyWith(
    int? id,
    String? title,
    String? description,
    bool? isDone,
  ) {
    return TodoModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isDone: isDone ?? this.isDone,
    );
  }
}

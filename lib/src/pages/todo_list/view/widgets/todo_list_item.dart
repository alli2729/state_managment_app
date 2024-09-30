import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/todo_list_controller.dart';
import '../../models/todo_model.dart';

class TodoListItem extends GetView<TodoListController> {
  const TodoListItem({super.key, required this.todo});

  final TodoModel todo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        children: [
          _checkBox(),
          const SizedBox(width: 10),
          _titleAndDesc(),
          const Spacer(),
          _deleteButton(),
        ],
      ),
    );
  }

  //* Widgets _________________________________________________________________

  Widget _checkBox() {
    return Checkbox(
      activeColor: Colors.grey,
      value: todo.isDone,
      onChanged: (value) {
        controller.onTodoDone(todo.id, value!);
      },
    );
  }

  Widget _deleteButton() {
    return IconButton(
      onPressed: () => controller.onRemove(todo.id),
      icon: const Icon(Icons.delete),
    );
  }

  Widget _titleAndDesc() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${todo.title} ${todo.id}',
          style: _titleStyle(),
        ),
        Text(
          todo.description,
          style: _descriptionStyle(),
        )
      ],
    );
  }

  //* Styles _________________________________________________________________

  TextStyle _titleStyle() {
    if (todo.isDone) {
      return TextStyle(
        color: Colors.grey[700],
        fontSize: 20,
        decoration: TextDecoration.lineThrough,
        decorationThickness: 1.5,
      );
    }
    return const TextStyle(fontSize: 20);
  }

  TextStyle _descriptionStyle() {
    if (todo.isDone) {
      return TextStyle(
        color: Colors.grey[800],
        fontSize: 12,
        decoration: TextDecoration.lineThrough,
      );
    }
    return const TextStyle(fontSize: 12);
  }
}

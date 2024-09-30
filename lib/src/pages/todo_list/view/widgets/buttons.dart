import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/todo_list_controller.dart';

class Buttons extends GetView<TodoListController> {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: controller.increament,
          icon: const Icon(Icons.add),
        ),
        const SizedBox(width: 10),
        IconButton(
          onPressed: controller.reset,
          icon: const Icon(Icons.restore),
        ),
        const SizedBox(width: 10),
        IconButton(
          onPressed: controller.change,
          icon: const Icon(Icons.change_circle),
        ),
      ],
    );
  }
}

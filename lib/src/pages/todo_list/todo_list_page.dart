import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/widgets/todo_list_item.dart';
import 'controller/todo_list_controller.dart';

class TodoListPage extends GetView<TodoListController> {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      floatingActionButton: _fab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: _body(),
    );
  }

  Widget _fab() {
    return FloatingActionButton(
      onPressed: controller.addTodo,
      elevation: 0,
      hoverElevation: 0,
      tooltip: 'Add Todo',
      child: const Icon(Icons.add),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      title: Text(controller.title.value),
    );
  }

  Widget _body() {
    return Obx(
      () => ListView.separated(
        itemCount: controller.todos.length,
        itemBuilder: (_, index) => TodoListItem(todo: controller.todos[index]),
        separatorBuilder: (_, __) => const Divider(indent: 20, endIndent: 20),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/edit_todo_controller.dart';

class EditTodo extends GetView<EditTodoController> {
  const EditTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      floatingActionButton: _fab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  //* Widgets _________________________________________________________________

  AppBar _appBar() => AppBar(
        title: const Text('Edit Todo'),
        centerTitle: true,
      );

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Form(
        key: controller.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _titleField(),
            const SizedBox(height: 12),
            _descriptionField(),
          ],
        ),
      ),
    );
  }

  Widget _fab() {
    return FloatingActionButton(
      onPressed: controller.onEdit,
      elevation: 0,
      hoverElevation: 0,
      child: const Icon(Icons.check),
    );
  }

  Widget _titleField() {
    return TextFormField(
      controller: controller.titleController,
      validator: controller.validator,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Edit Title',
      ),
    );
  }

  Widget _descriptionField() {
    return TextFormField(
      controller: controller.descriptionController,
      validator: controller.validator,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Edit Description',
      ),
    );
  }
}

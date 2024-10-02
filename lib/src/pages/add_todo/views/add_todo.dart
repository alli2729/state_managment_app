import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/add_todo_controller.dart';

class AddTodo extends GetView<AddTodoController> {
  const AddTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      floatingActionButton: _fab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  //* Widget __________________________________________________________________

  AppBar _appBar() => AppBar(
        title: const Text('Add TODO'),
        centerTitle: true,
      );

  Widget _fab() {
    return FloatingActionButton(
      onPressed: controller.submit,
      elevation: 0,
      hoverElevation: 0,
      child: const Icon(Icons.check),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Form(
        key: controller.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _titleField(),
            const SizedBox(height: 18),
            _descriptionField(),
          ],
        ),
      ),
    );
  }

  //* Widgets _________________________________________________________________

  Widget _titleField() {
    return TextFormField(
      controller: controller.titleController,
      validator: controller.validator,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Title',
      ),
    );
  }

  Widget _descriptionField() {
    return TextFormField(
      controller: controller.descriptionController,
      validator: controller.validator,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Description',
      ),
    );
  }
}

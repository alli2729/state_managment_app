import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AddTodoController extends GetxController {
  //* Variable ________________________________________________________________

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  //* Methods _________________________________________________________________

  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      List<String> todo = [titleController.text, descriptionController.text];

      Get.back<List<String>?>(result: todo);
    }
  }

  String? validator(String? input) {
    if (input != null) {
      if (input.isEmpty) return 'required';
    }
    return null;
  }

  @override
  void onClose() {
    super.onClose();
    titleController.dispose();
    descriptionController.dispose();
  }
}

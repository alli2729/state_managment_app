import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AddTodoController extends GetxController {
  //* Variable ________________________________________________________________
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  //* Methods _________________________________________________________________
  void returnData() {
    List<String> todo = [titleController.text, descriptionController.text];

    Get.back<List<String>?>(result: todo);
  }

  @override
  void onClose() {
    super.onClose();
    titleController.dispose();
    descriptionController.dispose();
  }
}

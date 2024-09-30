import 'package:get/get.dart';
import '../models/todo_model.dart';

class TodoListController extends GetxController {
  // Variable
  RxInt count = 0.obs;
  RxString title = 'Todos'.obs;

  RxList<String> todos = RxList([]);

  Rx<TodoModel> todo = TodoModel(
    title: 'title'.obs,
    description: 'description'.obs,
    isDone: false.obs,
  ).obs;

  // methods
  void change() => todo.value.description.value = 'changed';

}

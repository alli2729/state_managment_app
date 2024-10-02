import 'package:get/get.dart';
import '../../../infrastructure/routes/route_names.dart';
import '../models/todo_model.dart';

class TodoListController extends GetxController {
  //* Variable ________________________________________________________________

  int idMaker = 1;
  RxString title = 'Todos'.obs;
  RxList<TodoModel> todos = RxList([]);

  //* Methods _________________________________________________________________

  void addTodo() => Get.toNamed(RouteNames.addTodo);

  void onRemove(int id) {
    todos.removeWhere((element) => element.id == id);
  }

  void onTodoDone(int id, bool newValue) {
    int index = todos.indexWhere((element) => element.id == id);
    TodoModel newTodo = todos[index].copyWith(isDone: newValue);
    todos[index] = newTodo;
  }
}

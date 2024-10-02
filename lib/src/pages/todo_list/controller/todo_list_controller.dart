import 'package:get/get.dart';
import '../../../infrastructure/routes/route_names.dart';
import '../models/todo_model.dart';

class TodoListController extends GetxController {
  
  //* Variable ________________________________________________________________

  int idMaker = 1;
  RxString title = 'Todos'.obs;
  RxList<TodoModel> todos = RxList([]);

  //* Methods _________________________________________________________________

  Future<void> addTodo() async {
    final result = await Get.toNamed(RouteNames.addTodo);
    if (result != null) {
      todos.add(
        TodoModel(
            id: idMaker,
            title: result[0],
            description: result[1],
            isDone: false),
      );
      ++idMaker;
    }
  }

  Future<void> editTodo(int id) async {
    int index = todos.indexWhere((element) => element.id == id);

    Map<String, String> args = {
      'title': todos[index].title,
      'description': todos[index].description,
    };

    final result = await Get.toNamed(RouteNames.editTodo, arguments: args);

    if (result != null) {
      TodoModel newTodo = todos[index].copyWith(
        title: result['title'],
        description: result['description'],
      );
      todos[index] = newTodo;
    }
  }

  void onRemove(int id) {
    todos.removeWhere((element) => element.id == id);
  }

  void onTodoDone(int id, bool newValue) {
    int index = todos.indexWhere((element) => element.id == id);
    TodoModel newTodo = todos[index].copyWith(isDone: newValue);
    todos[index] = newTodo;
  }
}

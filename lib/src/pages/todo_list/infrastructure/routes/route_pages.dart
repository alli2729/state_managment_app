import 'package:get/get.dart';
import '../common/todo_binding.dart';
import 'route_names.dart';
import '../../todo_list_page.dart';

class RoutePages {
  static List<GetPage> pages = [
    GetPage(
      name: RouteNames.todo,
      page: () => const TodoListPage(),
      binding: TodoBinding(),
    ),
  ];
}

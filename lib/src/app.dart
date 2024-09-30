import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/todo_list/infrastructure/routes/route_names.dart';
import 'pages/todo_list/infrastructure/routes/route_pages.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.todo,
      getPages: RoutePages.pages,
    );
  }
}

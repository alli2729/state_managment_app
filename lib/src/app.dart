import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'infrastructure/routes/route_path.dart';
import 'infrastructure/routes/route_pages.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      initialRoute: RoutePath.todo,
      getPages: RoutePages.pages,
    );
  }
}

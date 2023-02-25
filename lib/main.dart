import 'package:custom_draggable_scrollable_sheet/home_page.dart';
import 'package:custom_draggable_scrollable_sheet/inherited_widget/app_state_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppStateContainer(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

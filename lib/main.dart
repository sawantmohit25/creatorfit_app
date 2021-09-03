import 'package:flutter/material.dart';
import 'package:project_app/shopping_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        unselectedWidgetColor:Colors.deepPurple,
      ),
      debugShowCheckedModeBanner:false,
      home: ShoppingList(),
    );
  }
}



import 'package:flutter/material.dart';
import './pages/UserSelect.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RIT Application',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: UserSelection(),
    );
  }
}

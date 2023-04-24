import 'package:flutter/material.dart';
import 'admin_profile.dart';
import 'loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: AdminProfilePage(),
    );
  }
}

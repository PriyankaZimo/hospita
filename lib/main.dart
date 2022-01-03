import 'package:flutter/material.dart';
import 'package:hospitalproject/hospital/call_page.dart';
import 'package:hospitalproject/hospital/search_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
       debugShowCheckedModeBanner: false,
       home: CallPage()
    );
  }
}

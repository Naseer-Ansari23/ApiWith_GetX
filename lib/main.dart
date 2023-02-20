import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_practice/GetApi_Pages/PostExp.dart';

import 'GetApi_Pages/DeletePost.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: const DeleteExp_Api(),
    );
  }
}

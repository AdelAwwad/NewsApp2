import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Services/News_Service.dart';
import 'package:newsapp/view/Home_View.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

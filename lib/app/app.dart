import 'package:flutter/material.dart';
import 'package:flutter_codepur1/views/home_view.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "FlutterRun",
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HomeView(),
    );
  }
}
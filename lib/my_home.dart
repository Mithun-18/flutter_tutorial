import 'package:flutter/material.dart';
import 'package:testflutter/app_bar.dart';
import 'package:testflutter/registration_page.dart';

class MyHome extends StatefulWidget {
  final int initialValue;

  const MyHome({super.key, required this.initialValue});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  late int counterValue;

  @override
  void initState() {
    counterValue = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Registration(),
    );
  }
}

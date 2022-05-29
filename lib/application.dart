import 'package:flutter/material.dart';
import 'package:good_guest/pages/home/index.dart';
import 'package:good_guest/pages/login.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

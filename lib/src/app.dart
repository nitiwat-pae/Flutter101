import 'package:flutter/material.dart';

import 'pages/login/login_page.dart';

class MyFlutter101 extends StatelessWidget {
  const MyFlutter101({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter 101",
      home: LoginPage(),
    );
  }
}

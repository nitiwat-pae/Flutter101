import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        width: double.infinity, // This line make width of Container() full screen
        // No need to set height because Container() auto full height
        color: Colors.deepPurple.withOpacity(0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, //cross is horizontal
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // main is vertical
          children: [
            Container(child: Text("CodeMobiles.com"), color: Colors.red,),
            Text("CodeMobiles.com"),
            Text("CodeMobiles.com"),
            Text("CodeMobiles.com"),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Create new variable
  // final is non-editable variable
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _usernameController.text = "admin";
    _passwordController.text = "1234";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Flutter101"),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(
              top: 32.0, left: 32.0, right: 32.0, bottom: 32.0),
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(32.0),
              height: 310,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ..._buildLoginFields(),
                  SizedBox(
                    height: 30,
                  ),
                  ..._buildButtons()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleClickLogin() => print(
      "Login Flutter101: \n Username: (${_usernameController.text}) \n Password: ${_passwordController.text}");

  void _handleClickReset() {
    _usernameController.text = "";
    _passwordController.text = "";
    print("Username and Password field has been reset.");
  }

  _buildLoginFields() {
    return [
      TextField(
        controller: _usernameController,
        decoration: InputDecoration(labelText: "Username"),
      ),
      TextField(
        controller: _passwordController,
        decoration: InputDecoration(labelText: "Password"),
      ),
    ];
  }

  _buildButtons() {
    return [
      ElevatedButton(onPressed: _handleClickLogin, child: Text("Login")),
      OutlinedButton(onPressed: _handleClickReset, child: Text("Reset"))
    ];
  }
}

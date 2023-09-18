import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Login Screen Title"),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //使用者名稱
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'USERNAME',
                border: OutlineInputBorder(),
              ),
            ),
            //間隔
            SizedBox(height: 20),
            //密碼
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'PASSWORD',
                border: OutlineInputBorder(),
              ),
              obscureText: true, //密碼隱藏字符
            ),
            //間隔
            SizedBox(height: 20),
            //登入按鈕
            ElevatedButton(
                onPressed: () {
                  final username = _usernameController.text;
                  final password = _passwordController.text;

                  if (username == 'admin' && password == "1234") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Login Successful!!")),
                    );
                  }
                },
                child: Text('Login Child'))
          ],
        ),
      ),
    );
  }
}

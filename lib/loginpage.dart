import 'dart:html';

import 'package:create_app/signuppage.dart';
import 'package:create_app/uihelper.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        uihelper.customtextfield(emailcontroller, "Emai", Icons.email, false),
        SizedBox(height: 20),
        uihelper.customtextfield(
            passwordcontroller, "Password", Icons.password, true),
        SizedBox(
          height: 20,
        ),
        uihelper.custombutton(() {}, "Login"),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Alreasy Have an account"),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signup()));
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ))
          ],
        )
      ]),
    );
  }
}

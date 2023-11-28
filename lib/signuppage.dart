import 'package:create_app/main.dart';
import 'package:create_app/uihelper.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        uihelper.customtextfield(emailcontroller, "Email", Icons.email, false),
        SizedBox(height: 20),
        uihelper.customtextfield(
            passwordcontroller, "Password", Icons.password, true),
        SizedBox(height: 20),
        uihelper.custombutton(() {
          Navigator.pop(
              context,
              MaterialPageRoute(
                  builder: (context) => MyHomePage(title: "Homepage")));
        }, "SignUp")
      ]),
    );
  }
}

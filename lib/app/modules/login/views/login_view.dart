import 'package:app_mobile/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  static String tag = 'login-page';

  @override
  State<StatefulWidget> createState() {
    return _LoginViewState();
  }
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> _key = GlobalKey();
  bool _validate = false;

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: Center(
              child: Form(
                key: _key,
                child: _getFormUI(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getFormUI() {
    return Column(
      children: <Widget>[
        Text(
          'PonselMart',
          style: TextStyle(
            color: Colors.black,
            fontSize: 50,
          ),
        ),
        Icon(
          Icons.person,
          color: Colors.yellow[600],
          size: 100.0,
        ),
        Text(
          'Admin Login',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 50.0),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          decoration: InputDecoration(
            hintText: 'Email',
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          ),
        ),
        SizedBox(height: 20.0),
        TextFormField(
          autofocus: false,
          obscureText: _obscureText,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                semanticLabel: _obscureText ? 'show password' : 'hide password',
              ),
            ),
          ),
        ),
        SizedBox(height: 15.0),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.yellow[600],
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  //to set border radius to button
                  borderRadius: BorderRadius.circular(32.0))),
          onPressed: () {
            Get.toNamed(Routes.DASHBOARD);
          },
          child: Text('Sign In', style: TextStyle(color: Colors.black54)),
        ),
        SizedBox(height: 10.0),
        TextButton(
          child: Text(
            'Forgot password?',
            style: TextStyle(color: Colors.black),
          ),
          onPressed: _showForgotPasswordDialog,
        ),
        TextButton(
          onPressed: () {
            Get.toNamed(Routes.SIGNUP);
          },
          child: Text('Not a member? Sign up now',
              style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }

  Future<Null> _showForgotPasswordDialog() async {
    await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Please enter your Email'),
            contentPadding: EdgeInsets.all(5.0),
            content: TextField(
              decoration: InputDecoration(hintText: "Email"),
            ),
            actions: <Widget>[
              TextButton(
                child: Text("Ok"),
                onPressed: () {},
              ),
              TextButton(
                child: Text("Cancel"),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        });
  }
}

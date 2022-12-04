import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/signup_controller.dart';

class SignupView extends StatefulWidget {
  static String tag = 'signup-page';

  @override
  State<StatefulWidget> createState() {
    return _SignupViewState();
  }
}

class _SignupViewState extends State<SignupView> {
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
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Registration',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    autofocus: false,
                    obscureText: _obscureText,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          semanticLabel:
                              _obscureText ? 'show password' : 'hide password',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    autofocus: false,
                    obscureText: _obscureText,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          semanticLabel:
                              _obscureText ? 'show password' : 'hide password',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: 'Number Phone',
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0)),
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
                    child: Text('Sign Up',
                        style: TextStyle(color: Colors.black54)),
                  ),
                  SizedBox(height: 10.0),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.LOGIN);
                    },
                    child: Text('Already have an account? Login',
                        style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

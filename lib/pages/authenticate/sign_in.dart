import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  String password = '';
  bool isPasswordVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    emailController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      gestures: [GestureType.onTap, GestureType.onVerticalDragDown],
      child: GestureDetector(
        //onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Scaffold(
          backgroundColor: Colors.blue[900],
          body: Center(
            child: ListView(
              padding: EdgeInsets.all(32),
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        fontSize: 30),
                  ),
                ),
                buildEmail(),
                SizedBox(
                  height: 50,
                ),
                buildPassword(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEmail() => TextField(
        style: TextStyle(color: Colors.white),
        controller: emailController,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            labelText: 'Email',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            hintText: 'example@email.com',
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              Icons.mail,
              color: Colors.white,
            ),
            suffixIcon: emailController.text.isEmpty
                ? Container(
                    width: 0,
                  )
                : IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => emailController.clear())),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
      );

  Widget buildPassword() => TextField(
        onChanged: (value) => setState(() => this.password = value),
        onSubmitted: (value) => setState(() => this.password = value),
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: 'Your password',
          hintStyle: TextStyle(color: Colors.white),
          labelText: 'Password',
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.white,
          ),
          errorText: 'Password is wrong',
          errorStyle: TextStyle(fontSize: 17),
          suffixIcon: IconButton(
            icon: isPasswordVisible
                ? Icon(Icons.visibility)
                : Icon(Icons.visibility_off),
            onPressed: () =>
                setState(() => isPasswordVisible = !isPasswordVisible),
          ),
          border: OutlineInputBorder(),
        ),
        obscureText: !isPasswordVisible,
      );
}

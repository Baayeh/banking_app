import 'package:banking_app/pages/authenticate/auth_home.dart';
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
  bool value = false;

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
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 150,
                  ),
                ),
                buildEmail(),
                SizedBox(
                  height: 50,
                ),
                buildPassword(),
                SizedBox(
                  height: 20,
                ),
                buildCheckbox(),
                SizedBox(
                  height: 20,
                ),
                buildLoginBtn(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'FORGOT PASSWORD?',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'RESET HERE',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                decoration: TextDecoration.underline),
                          ))
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) => AuthHome()));
                        },
                        child: Text(
                          'Return to Home',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )
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
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
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
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.white,
          ),
          //errorText: 'Password is wrong',
          //errorStyle: TextStyle(fontSize: 17),
          suffixIcon: IconButton(
            icon: isPasswordVisible
                ? Icon(
                    Icons.visibility,
                    color: Colors.white,
                  )
                : Icon(
                    Icons.visibility_off,
                    color: Colors.white,
                  ),
            onPressed: () =>
                setState(() => isPasswordVisible = !isPasswordVisible),
          ),
          border: OutlineInputBorder(),
        ),
        obscureText: !isPasswordVisible,
      );

  Widget buildCheckbox() => ListTile(
        onTap: () {
          setState(() {
            this.value = !value;
          });
        },
        leading: Theme(
          data: ThemeData(unselectedWidgetColor: Colors.grey),
          child: Checkbox(
            value: value,
            onChanged: (value) {
              setState(() {
                this.value = value;
              });
            },
            checkColor: Colors.white,
          ),
        ),
        title: Text(
          'Remember me next time',
          style: TextStyle(color: Colors.white),
        ),
      );

  Widget buildLoginBtn() => ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 0),
          child: Text(
            'LOGIN',
            style:
                TextStyle(color: Colors.black, letterSpacing: 3, fontSize: 20),
          ),
        ),
        style: ElevatedButton.styleFrom(primary: Colors.white, elevation: 8),
      );
}

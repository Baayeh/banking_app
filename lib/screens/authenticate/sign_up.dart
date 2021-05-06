import 'package:banking_app/screens/authenticate/auth_home.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final emailController = TextEditingController();
  final contactController = TextEditingController();
  bool value_tC = false;
  bool value_acc = false;

  String password = '';
  bool isPasswordVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    nameController.addListener(() {
      setState(() {});
    });

    surnameController.addListener(() {
      setState(() {});
    });

    emailController.addListener(() {
      setState(() {});
    });

    contactController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: GestureDetector(
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
                    'PERSONAL ACCOUNT',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                buildFirstName(),
                SizedBox(
                  height: 15,
                ),
                buildSurname(),
                SizedBox(
                  height: 15,
                ),
                buildEmail(),
                SizedBox(
                  height: 15,
                ),
                buildContact(),
                SizedBox(
                  height: 15,
                ),
                buildPassword(),
                buildCheckTC(),
                buildCheckAcc(),
                SizedBox(
                  height: 20,
                ),
                buildSignUpBtn(),
                SizedBox(
                  height: 20,
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

  Widget buildFirstName() => TextField(
        style: TextStyle(color: Colors.white),
        controller: nameController,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            labelText: 'First Name',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            hintText: 'John',
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            suffixIcon: nameController.text.isEmpty
                ? Container(
                    width: 0,
                  )
                : IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => nameController.clear())),
        textInputAction: TextInputAction.done,
      );

  Widget buildSurname() => TextField(
        style: TextStyle(color: Colors.white),
        controller: surnameController,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            labelText: 'Surname',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            hintText: 'John',
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            suffixIcon: surnameController.text.isEmpty
                ? Container(
                    width: 0,
                  )
                : IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => surnameController.clear())),
        textInputAction: TextInputAction.done,
      );

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

  Widget buildContact() => TextField(
        style: TextStyle(color: Colors.white),
        controller: contactController,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            labelText: 'Mobile Number',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            hintText: 'John',
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              Icons.contact_phone,
              color: Colors.white,
            ),
            suffixIcon: contactController.text.isEmpty
                ? Container(
                    width: 0,
                  )
                : IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => contactController.clear())),
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

  Widget buildCheckTC() => ListTile(
        onTap: () {
          setState(() {
            this.value_tC = !value_tC;
          });
        },
        leading: Theme(
          data: ThemeData(unselectedWidgetColor: Colors.grey),
          child: Checkbox(
            value: value_tC,
            onChanged: (value) {
              setState(() {
                this.value_tC = value;
              });
            },
            checkColor: Colors.white,
          ),
        ),
        title: Text(
          'Accept Terms And Conditions',
          style: TextStyle(color: Colors.white),
        ),
      );

  Widget buildCheckAcc() => ListTile(
        onTap: () {
          setState(() {
            this.value_acc = !value_acc;
          });
        },
        leading: Theme(
          data: ThemeData(unselectedWidgetColor: Colors.grey),
          child: Checkbox(
            value: value_acc,
            onChanged: (value) {
              setState(() {
                this.value_acc = value;
              });
            },
            checkColor: Colors.white,
          ),
        ),
        title: Text(
          'I have a Central account',
          style: TextStyle(color: Colors.white),
        ),
      );

  Widget buildSignUpBtn() => ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 0),
          child: Text(
            'SIGN UP',
            style:
                TextStyle(color: Colors.black, letterSpacing: 3, fontSize: 20),
          ),
        ),
        style: ElevatedButton.styleFrom(primary: Colors.white, elevation: 8),
      );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_sls/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blue, Colors.white])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          _icon(),
          const SizedBox(
            height: 50,
          ),
          _inputField("Email", emailController),
          const SizedBox(
            height: 20,
          ),
          _inputField("Password", passwordController, isPassword: true),
          const SizedBox(
            height: 50,
          ),
          _loginBtn(),
          const SizedBox(
            height: 20,
          ),
          _extraText(),
        ]),
      ),
    );
  }

  Widget _icon() {
    return CircleAvatar(
      radius: 60, // Adjust the size as needed
      backgroundImage: AssetImage(
          'assets/images/avatar.jpg'), 
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.black));
    return TextField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: showAlert,
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Colors.white,
          onPrimary: Colors.blue,
          padding: const EdgeInsets.symmetric(vertical: 16)),
      child: const SizedBox(
          width: double.infinity,
          child: Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
    );
  }

  Widget _extraText() {
    return TextButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return SignupScreen();
            },
          ));
        },
        child: Text("Don't have an account? Sign Up!"));
  }

  void showAlert() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: new Text("Login Screen"),
          content: Text(
              "Email: ${emailController.text}\nPassword: ${passwordController.text}"),
          actions: <Widget>[
            TextButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            TextButton(
                child: Text('Ok'),
                onPressed: () {
                  emailController.clear();
                  passwordController.clear();
                  Navigator.of(context).pop();
                })
          ],
        );
      },
    );
  }
}

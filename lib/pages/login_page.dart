import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "Hello, Welcome back!",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          "Login to continue",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        TextField(
          decoration: InputDecoration(hintText: "username"),
        ),
        TextField(
          decoration: InputDecoration(hintText: "Password"),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Forget Password?",
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Log In"),
        ),
        Text(
          "Or sign in with",
          style: TextStyle(color: Colors.white),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset("assets/images/google.png"),
                height: 40,
                width: 40,
              ),
              Text("Login with Google"),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset("assets/images/facebook.png"),
                height: 40,
                width: 40,
              ),
              Text("Login with Facebook"),
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }
}

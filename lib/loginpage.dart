import 'package:flutter/material.dart';
import 'package:untitled1/second.dart';
import 'adminbuttons.dart';

class AdminLoginPage extends StatelessWidget {
  final TextEditingController adminIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background_image.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AdminButtons(
                    text: "Admin ID",
                    obscureText: false,
                    controller: adminIdController,
                  ),
                  SizedBox(height: 16),
                  AdminButtons(
                    text: "Password",
                    obscureText: true,
                    controller: passwordController,
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AdminPage()));
                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled1/second.dart';
import 'adminbuttons.dart';

class AdminLoginPage extends StatefulWidget {
  @override
  _AdminLoginPageState createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  final TextEditingController adminIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isCorrect = false;

  void _checkCredentials() {
    if (adminIdController.text == "admin" &&
        passwordController.text == "password") {
      setState(() {
        _isCorrect = true;
      });
    } else {
      setState(() {
        _isCorrect = false;
      });
    }
  }

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
                      _checkCredentials();
                      if (_isCorrect) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AdminPage()),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Incorrect Credentials"),
                            content: Text(
                                "The admin ID or password you entered is incorrect. Please try again."),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("OK"),
                              ),
                            ],
                          ),
                        );
                      }
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

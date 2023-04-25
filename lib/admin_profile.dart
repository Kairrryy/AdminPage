import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize the text fields with some default values
    _nameController.text = 'John Doe';
    _passwordController.text = 'password123';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // TODO: Implement changing profile photo
              },
              child: CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Change Name'),
                          content: TextField(
                            controller: _nameController,
                            decoration:
                                InputDecoration(hintText: 'Enter new name'),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {});
                                Navigator.pop(context);
                              },
                              child: Text('Save'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Row(
                    children: [
                      Text('Name: '),
                      Text(
                        _nameController.text,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.edit),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Change Password'),
                          content: TextField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration:
                                InputDecoration(hintText: 'Enter new password'),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {});
                                Navigator.pop(context);
                              },
                              child: Text('Save'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Row(
                    children: [
                      Text('Password: '),
                      Text(
                        _passwordController.text,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.edit),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Admin ID: 123456',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

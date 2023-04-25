import 'package:flutter/material.dart';
import 'package:untitled1/addbooks.dart';
import 'package:untitled1/sidebuttons.dart';

import 'allbooks.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final adminController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Row(
          children: [
            Container(
              width: 200,
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 32,
                    ),
                    child: Text(
                      "Hello Admin!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SideButtons(
                    icon: Icons.people,
                    text: 'User Records',
                    onTap: () {},
                  ),
                  SideButtons(
                    icon: Icons.book,
                    text: 'All Books',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RandomBooksPage()),
                      );
                    },
                  ),
                  SideButtons(
                    icon: Icons.add,
                    text: 'Add Books',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddBooks()));
                    },
                  ),
                  SideButtons(
                    icon: Icons.person,
                    text: 'My Profile',
                    onTap: () {},
                  ),
                  SideButtons(
                    icon: Icons.logout,
                    text: 'Log Out',
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Confirm Log Out'),
                            content: Text('Are you sure you want to log out?'),
                            actions: <Widget>[
                              TextButton(
                                child: Text('Yes'),
                                onPressed: () {
                                  // exit(0);
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: Text('No'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                  Expanded(child: Container()),
                  SideButtons(
                    icon: Icons.settings,
                    text: 'Settings',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                child: ListView(
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

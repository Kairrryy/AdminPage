import 'package:flutter/material.dart';

class AdminProfilePage extends StatefulWidget {
  @override
  _AdminProfilePageState createState() => _AdminProfilePageState();
}

class _AdminProfilePageState extends State<AdminProfilePage> {
  String _name = 'John Doe';
  String _password = '********';
  final _adminId = 'A001';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Profile'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/profile_photo.jpg'),
                ),
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // TODO: implement photo editing logic
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            _buildEditableField('Name', _name),
            SizedBox(height: 10.0),
            _buildEditableField('Password', _password),
            SizedBox(height: 10.0),
            _buildNonEditableField('Admin ID', _adminId),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // TODO: implement save logic
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEditableField(String label, String value) {
    return Row(
      children: [
        Text(label, style: TextStyle(fontSize: 18.0)),
        SizedBox(width: 10.0),
        Expanded(
          child: TextFormField(
            initialValue: value,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            onChanged: (newValue) {
              setState(() {
                if (label == 'Name') {
                  _name = newValue;
                } else if (label == 'Password') {
                  _password = newValue;
                }
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _buildNonEditableField(String label, String value) {
    return Row(
      children: [
        Text(label, style: TextStyle(fontSize: 18.0)),
        SizedBox(width: 10.0),
        Text(value,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

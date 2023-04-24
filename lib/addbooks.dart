import 'package:flutter/material.dart';

class AddBooks extends StatefulWidget {
  @override
  _AddBooksState createState() => _AddBooksState();
}

class _AddBooksState extends State<AddBooks> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _publishYearController = TextEditingController();
  final TextEditingController _isbnController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  bool _availability = false;
  bool _sendNotification = false;
  List<String> _tags = [];

  Widget _buildTitle() {
    return Text(
      'Add Books',
      style: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildTitleField() {
    return TextFormField(
      controller: _titleController,
      decoration: InputDecoration(labelText: 'Title of the Book'),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter title';
        }
        return null;
      },
    );
  }

  Widget _buildAuthorField() {
    return TextFormField(
      controller: _authorController,
      decoration: InputDecoration(labelText: "Author's Name"),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter title';
        }
        return null;
      },
    );
  }

  Widget _buildPublishYearField() {
    return TextFormField(
      controller: _publishYearController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: 'Publish Year'),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter title';
        }
        return null;
      },
    );
  }

  Widget _buildISBNField() {
    return TextFormField(
      controller: _isbnController,
      decoration: InputDecoration(labelText: 'ISBN'),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter title';
        }
        return null;
      },
    );
  }

  Widget _buildDescriptionField() {
    return TextFormField(
      controller: _descriptionController,
      maxLines: 5,
      decoration: InputDecoration(labelText: 'Description'),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter title';
        }
        return null;
      },
    );
  }

  Widget _buildCoverImageField() {
    // Implement the functionality to attach an image.
    // This could be a button to upload an image or a field to paste the image URL.
    return Container();
  }

  Widget _buildAvailabilityField() {
    return CheckboxListTile(
      title: Text('Availability Status'),
      value: _availability,
      onChanged: (value) {
        setState(() {
          _availability = value!;
        });
      },
    );
  }

  Widget _buildSendNotificationField() {
    return CheckboxListTile(
      title: Text('Do you want to push a notification?'),
      value: _sendNotification,
      onChanged: (value) {
        setState(() {
          _sendNotification = value!;
        });
      },
    );
  }

  Widget _buildQuantityField() {
    return TextFormField(
        controller: _quantityController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: 'Available Quantity'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter title';
          }
          return null;
        });
  }

  Widget _buildPriceField() {
    return TextFormField(
      controller: _priceController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: 'Price'),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter title';
        }
        return null;
      },
    );
  }

  Widget _buildTagsField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Tags',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        CheckboxListTile(
          title: Text('Romance'),
          value: _tags.contains('Romance'),
          onChanged: (value) {
            setState(() {
              if (value != null && value) {
                _tags.add('Romance');
              } else {
                _tags.remove('Romance');
              }
            });
          },
        ),
        CheckboxListTile(
          title: Text('Thriller'),
          value: _tags.contains('Thriller'),
          onChanged: (value) {
            setState(() {
              if (value != null && value) {
                _tags.add('Romance');
              } else {
                _tags.remove('Thriller');
              }
            });
          },
        ),
        CheckboxListTile(
          title: Text('Mystery'),
          value: _tags.contains('Mystery'),
          onChanged: (value) {
            setState(() {
              if (value != null && value) {
                _tags.add('Romance');
              } else {
                _tags.remove('Mystery');
              }
            });
          },
        ),
        CheckboxListTile(
          title: Text('Science Fiction'),
          value: _tags.contains('Science Fiction'),
          onChanged: (value) {
            setState(() {
              if (value != null && value) {
                _tags.add('Romance');
              } else {
                _tags.remove('Science Fiction');
              }
            });
          },
        ),
        CheckboxListTile(
          title: Text('Biography'),
          value: _tags.contains('Biography'),
          onChanged: (value) {
            setState(() {
              if (value != null && value) {
                _tags.add('Romance');
              } else {
                _tags.remove('Biography');
              }
            });
          },
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState?.validate() == true) {
            // Implement the functionality to add the book to the library.
          }
        },
        child: Text('Submit'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 64.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _buildTitle(),
                SizedBox(height: 24.0),
                _buildTitleField(),
                _buildAuthorField(),
                _buildPublishYearField(),
                _buildISBNField(),
                _buildDescriptionField(),
                _buildCoverImageField(),
                _buildAvailabilityField(),
                _buildSendNotificationField(),
                _buildQuantityField(),
                _buildPriceField(),
                const SizedBox(
                  height: 20,
                ),
                _buildTagsField(),
                _buildSubmitButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

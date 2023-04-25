import 'dart:math';

import 'package:flutter/material.dart';

import 'bookslist.dart';

// import 'book_details_page.dart';

class RandomBooksPage extends StatelessWidget {
  final List<String> _titles = [
    'The Great Gatsby',
    'To Kill a Mockingbird',
    '1984',
    'Pride and Prejudice',
    'The Catcher in the Rye',
    'The Hobbit',
    'The Lord of the Rings',
    'The Hitchhiker\'s Guide to the Galaxy',
    'Brave New World',
    'Animal Farm',
  ];

  final List<String> _authors = [
    'F. Scott Fitzgerald',
    'Harper Lee',
    'George Orwell',
    'Jane Austen',
    'J.D. Salinger',
    'J.R.R. Tolkien',
    'Douglas Adams',
    'Aldous Huxley',
    'George Orwell',
    'George Orwell',
  ];

  final List<String> _publishers = [
    'Charles Scribner\'s Sons',
    'J. B. Lippincott & Co.',
    'Secker and Warburg',
    'T. Egerton, Whitehall',
    'Little, Brown and Company',
    'George Allen & Unwin',
    'Del Rey Books',
    'Chatto & Windus',
    'Secker and Warburg',
    'Secker and Warburg',
  ];

  final List<String> _categories = [
    'Fiction',
    'Fiction',
    'Fiction',
    'Fiction',
    'Fiction',
    'Fantasy',
    'Science Fiction',
    'Science Fiction',
    'Science Fiction',
    'Satire',
  ];

  final List<int> _quantities = [10, 10, 10, 10, 10, 10, 10, 10, 10, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Books'),
      ),
      body: ListView.builder(
        itemCount: _titles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_titles[index]),
            subtitle: Text(_authors[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailsPage(
                    title: _titles[index],
                    author: _authors[index],
                    publisher: _publishers[index],
                    category: _categories[index],
                    quantity: _quantities[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

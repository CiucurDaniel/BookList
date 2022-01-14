import 'package:book_list/presentation/screens/book_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookListApp());
}

class BookListApp extends StatelessWidget {
  const BookListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BookList(),
    );
  }
}
import 'package:book_list/data/models/book.dart';
import 'package:flutter/material.dart';

// TODO: Implement this page
class BookDetails extends StatelessWidget {
  final Book book;

  const BookDetails({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book details'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text(book.title),
          Text(book.author),
          Text(
            book.pages.toString(),
          ),
        ],
      ),
    );
  }
}

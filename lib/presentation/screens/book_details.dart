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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/creative_color_book.png'),
            Row(
              children: <Widget>[
                const Expanded(
                  child: Text('Book title: '),
                ),
                Text(book.title),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              children: <Widget>[
                const Expanded(
                  child: Text('Author: '),
                ),
                Text(book.author),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              children: <Widget>[
                const Expanded(
                  child: Text('Pages: '),
                ),
                Text(
                  book.pages.toString(),
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              children: <Widget>[
                const Expanded(
                  child: Text('Status: '),
                ),
                Text(
                  book.status.simpleToString(),
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              children: const <Widget>[
                ElevatedButton(
                  onPressed: null,
                  child: Text('Edit'),
                ),
                TextButton(
                  onPressed: null,
                  child: Text('Delete book'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

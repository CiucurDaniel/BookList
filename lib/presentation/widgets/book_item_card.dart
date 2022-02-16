import 'package:flutter/material.dart';
import 'package:book_list/data/models/book.dart';
import 'dart:math';

class BookItemCard extends StatelessWidget {
  final Book book;

  const BookItemCard({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MaterialColor> _colors = [
      Colors.pink,
      Colors.amber,
      Colors.blue,
      Colors.green,
    ];

    final _random = Random();

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Card(
        elevation: 8.0,
        child: ListTile(
          leading: Icon(
            Icons.menu_book,
            color: _colors[_random.nextInt(_colors.length)],
          ),
          title: Text(book.title),
          subtitle: Text(book.author),
        ),
      ),
    );
  }
}

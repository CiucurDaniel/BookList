import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: const <Widget>[
          Card(
            elevation: 8.0,
            child: ListTile(
              leading: Icon(
                Icons.menu_book,
                color: Colors.pink,
              ),
              title: Text('Book 1'),
              subtitle: Text('Author 1'),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Card(
            elevation: 8.0,
            child: ListTile(
              leading: Icon(Icons.menu_book),
              title: Text('Book 2'),
              subtitle: Text('Author 2'),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Card(
            elevation: 8.0,
            child: ListTile(
              leading: Icon(Icons.menu_book),
              title: Text('Book 3'),
              subtitle: Text('Author 3'),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Card(
            elevation: 8.0,
            child: ListTile(
              leading: Icon(Icons.menu_book),
              title: Text('Book 4'),
              subtitle: Text('Author 4'),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }
}

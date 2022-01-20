import 'package:flutter/material.dart';

class ReadingStats extends StatelessWidget {
  const ReadingStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Card(
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/creative_color_book.png'),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('You have 52 books you want to read!'),
              ),
            ),
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Card(
            elevation: 8.0,
          ),
          Card(
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/stack_of_books.png'),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('You read 102 books!'),
              ),
            ),
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          ),
        ],
      ),
    );
  }
}

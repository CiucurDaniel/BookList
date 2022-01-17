import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book list'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 8.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const <Widget>[
                      Text('Book 1'),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Author 1'),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 8.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const <Widget>[
                      Text('Book 2'),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Author 2'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: null,
                  icon: Icon(Icons.home),
                ),
                Text('Home'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: null,
                  icon: Icon(Icons.show_chart_rounded),
                ),
                Text('Stats'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book list'),
        centerTitle: true,
      ),
      body: Padding(
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

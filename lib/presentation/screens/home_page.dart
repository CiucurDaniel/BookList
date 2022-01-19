import 'package:flutter/material.dart';
import 'book_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book list'),
        centerTitle: true,
      ),
      body: const BookList(),
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

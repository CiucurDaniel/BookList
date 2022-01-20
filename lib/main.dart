import 'package:book_list/presentation/screens/screens.dart';
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
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    );
  }
}

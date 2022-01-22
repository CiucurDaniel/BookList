import 'package:book_list/cubits/home_bottom_navigation_cubit.dart';
import 'package:book_list/data/repositories/mock_book_repository.dart';
import 'package:book_list/presentation/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubits/book_cubit.dart';

void main() {
  runApp(const BookListApp());
}

class BookListApp extends StatelessWidget {
  const BookListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return RepositoryProvider(
      create: (context) => MockBookRepository(),
      child: MaterialApp(
        title: 'Book List',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        home: const HomePage(),
      ),
    );
  }
}

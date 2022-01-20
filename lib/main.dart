import 'package:book_list/cubits/home_bottom_navigation_cubit.dart';
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

    // TODO: Wrap with RepositoryProvider when implemented
    return MultiBlocProvider(
      providers: [
        BlocProvider<BooksCubit>(
          create: (BuildContext context) => BooksCubit(),
        ),
        BlocProvider<HomeBottomNavigationCubit>(
          create: (BuildContext context) => HomeBottomNavigationCubit(),
        ),
      ],
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

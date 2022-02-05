import 'package:book_list/cubits/book_cubit.dart';
import 'package:book_list/data/repositories/mock_book_repository.dart';
import 'package:book_list/presentation/widgets/book_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookListPage extends StatelessWidget {
  const BookListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => MockBookRepository(),
      child: BlocProvider(
        create: (context) => BooksCubit(
          bookRepository: context.read<MockBookRepository>(),
        )..getBooks(),
        child: const BookListView(),
      ),
    );
  }
}

class BookListView extends StatelessWidget {
  const BookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<BooksCubit, BooksState>(
        builder: (context, state) {
          if (state is BooksLoading) {
            return const CircularProgressIndicator();
          } else if (state is BooksLoaded) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: ListView.builder(
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return BookItemCard(book: state.books[index]);
                },
              ),
            );
          } else {
            return Container(
              color: Colors.pink,
              child: const Center(
                child: Text('Error occurred loading books'),
              ),
            );
          }
        },
      ),
    );
  }
}

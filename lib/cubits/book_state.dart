part of 'book_cubit.dart';

abstract class BooksState extends Equatable {
  const BooksState();
}

class BooksInitial extends BooksState {
  @override
  List<Object> get props => [];
}

class BooksLoading extends BooksState {
  const BooksLoading();

  @override
  List<Object?> get props => [];
}

class BooksLoaded extends BooksState {
  final List<Book> books;

  const BooksLoaded(this.books);

  @override
  List<Object?> get props => [books];
}

class BooksLoadedWithError extends BooksState {
  const BooksLoadedWithError();

  @override
  List<Object?> get props => [];
}

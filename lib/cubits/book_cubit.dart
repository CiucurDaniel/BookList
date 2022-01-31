import 'package:bloc/bloc.dart';
import 'package:book_list/data/models/book.dart';
import 'package:book_list/data/repositories/book_repository_interface.dart';
import 'package:equatable/equatable.dart';

part 'book_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit({required this.bookRepository}) : super(BooksInitial());

  final IBookRepository bookRepository;

  void getBooks() async {
    try {
      emit(const BooksLoading());
      final books = await bookRepository.getAllBooks();
      emit(BooksLoaded(books));
    } catch (error) {
      emit(const BooksLoadedWithError());
    }
  }
}

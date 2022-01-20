import 'package:bloc/bloc.dart';
import 'package:book_list/data/models/book.dart';
import 'package:equatable/equatable.dart';

part 'book_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit() : super(BooksInitial());
}

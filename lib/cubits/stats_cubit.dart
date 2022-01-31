import 'package:bloc/bloc.dart';
import 'package:book_list/data/repositories/book_repository_interface.dart';
import 'package:equatable/equatable.dart';
import 'package:book_list/data/models/book.dart';

part 'stats_state.dart';

class StatsCubit extends Cubit<StatsState> {
  StatsCubit({required this.bookRepository}) : super(StatsInitial());

  final IBookRepository bookRepository;

  void getUserStats() async {
    emit(StatsLoading());

    try {
      final booksRead = await bookRepository.getAllBooks().then((value) =>
          value.where((element) => element.status == Status.read).length);

      final booksWantingToRead = await bookRepository.getAllBooks().then(
          (value) => value
              .where((element) => element.status == Status.wantToRead)
              .length);

      emit(StatsLoaded(booksRead, booksWantingToRead));
    } catch (error) {
      emit(StatsLoadedWithError());
    }
  }
}

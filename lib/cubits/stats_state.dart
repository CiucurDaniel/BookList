part of 'stats_cubit.dart';

abstract class StatsState extends Equatable {
  const StatsState();
}

class StatsInitial extends StatsState {
  @override
  List<Object> get props => [];
}

class StatsLoading extends StatsState {
  @override
  List<Object?> get props => [];
}

class StatsLoaded extends StatsState {
  final int bookRead;
  final int bookWantingToRead;

  const StatsLoaded(this.bookRead, this.bookWantingToRead);

  @override
  List<Object?> get props => [bookRead, bookWantingToRead];
}

class StatsLoadedWithError extends StatsState {
  @override
  List<Object?> get props => [];
}

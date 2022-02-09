import 'package:book_list/cubits/stats_cubit.dart';
import 'package:book_list/data/repositories/mock_book_repository.dart';
import 'package:flutter/material.dart';
import 'package:book_list/presentation/widgets/stats_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReadingStatsPage extends StatelessWidget {
  const ReadingStatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => MockBookRepository(),
      child: BlocProvider(
        create: (context) => StatsCubit(
          bookRepository: context.read<MockBookRepository>(),
        )..getUserStats(),
        child: const ReadingStatsView(),
      ),
    );
  }
}

class ReadingStatsView extends StatelessWidget {
  const ReadingStatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<StatsCubit, StatsState>(builder: (context, state) {
        if (state is StatsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is StatsLoaded) {
          return Column(
            children: <Widget>[
              StatsCard(
                  primaryStatsNumber: state.bookWantingToRead.toString(),
                  statsText: 'books you want to read!',
                  imagePath: 'assets/images/creative_color_book.png'),
              const SizedBox(
                height: 10.0,
              ),
              StatsCard(
                  primaryStatsNumber: state.bookRead.toString(),
                  statsText: 'books read!',
                  imagePath: 'assets/images/stack_of_books.png'),
            ],
          );
        } else {
          return const Center(
            child: Text('Error occurred loading stats'),
          );
        }
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:book_list/presentation/widgets/stats_card.dart';

class ReadingStats extends StatelessWidget {
  const ReadingStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          StatsCard(
              primaryStatsNumber: 102.toString(),
              statsText: 'books you want to read!',
              imagePath: 'assets/images/creative_color_book.png'),
          const SizedBox(
            height: 10.0,
          ),
          StatsCard(
              primaryStatsNumber: 52.toString(),
              statsText: 'books read!',
              imagePath: 'assets/images/stack_of_books.png'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

/// Card used to display stats in the ReadingStats page
/// it take three parameters
/// [primaryStatsNumber] - a text representing the primary "stats" the card is showing
/// [statsText] - suffix for the number ex: 102 books read!
/// [imagePath] - path from assets in order to display an image in the card
class StatsCard extends StatelessWidget {
  final String primaryStatsNumber;
  final String statsText;
  final String imagePath;

  const StatsCard(
      {Key? key,
      required this.primaryStatsNumber,
      required this.statsText,
      required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  primaryStatsNumber,
                  style: const TextStyle(fontSize: 48.0),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              statsText,
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
          ),
        ],
      ),
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
    );
  }
}

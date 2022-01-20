import 'package:flutter/material.dart';

class ReadingStats extends StatelessWidget {
  const ReadingStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        '102',
                        style: TextStyle(fontSize: 48.0),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          //color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                                'assets/images/creative_color_book.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'books you want to read!',
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ],
            ),
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        '52',
                        style: TextStyle(fontSize: 48.0),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          //color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image:
                                AssetImage('assets/images/stack_of_books.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'books read!',
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ],
            ),
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          ),
        ],
      ),
    );
  }
}

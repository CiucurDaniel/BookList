import 'package:book_list/data/models/book.dart';

class MockBookRepository {
  List<Book> fakeBookDatabaseRecords = [
    Book(id: 1, title: 'Java programming', author: 'Louis Hamilton', pages: 123, isReaded: true),
    Book(id: 1, title: 'C++ programming', author: 'Louis Hamilton', pages: 203, isReaded: false),
    Book(id: 1, title: 'The Jungle', author: 'Mike V Hamis', pages: 123, isReaded: false),
    Book(id: 1, title: 'Perfect cat', author: 'Keith', pages: 400, isReaded: true),
    Book(id: 1, title: 'Computer Science', author: 'Andreea V', pages: 505, isReaded: true),
    Book(id: 1, title: 'Docker for begginers', author: 'Mosh Hamedamani', pages: 98, isReaded: true),
  ];

  // TODO: Implements IBookRepository methods here
}
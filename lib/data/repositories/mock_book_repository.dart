import 'package:book_list/data/models/book.dart';
import 'package:book_list/data/repositories/book_repository_interface.dart';

class MockBookRepository implements IBookRepository {
  List<Book> fakeBookDatabaseRecords = [
    Book(
        id: 1,
        title: 'Java programming',
        author: 'Louis Hamilton',
        pages: 123,
        status: Status.read),
    Book(
        id: 2,
        title: 'C++ programming',
        author: 'Louis Hamilton',
        pages: 203,
        status: Status.currentlyReading),
    Book(
        id: 3,
        title: 'The Jungle',
        author: 'Mike V Hamis',
        pages: 123,
        status: Status.currentlyReading),
    Book(
        id: 4,
        title: 'Perfect cat',
        author: 'Keith',
        pages: 400,
        status: Status.read),
    Book(
        id: 5,
        title: 'Computer Science',
        author: 'Andreea V',
        pages: 505,
        status: Status.wantToRead),
    Book(
        id: 6,
        title: 'Docker for begginers',
        author: 'Mosh Hamedamani',
        pages: 98,
        status: Status.wantToRead),
  ];

  @override
  Future<void> addBook(Book b) {
    // TODO: implement addBook
    throw UnimplementedError();
  }

  @override
  Future<void> deleteBookById(int id) {
    // TODO: implement deleteBookById
    throw UnimplementedError();
  }

  @override
  Future<void> editBook(Book b) {
    // TODO: implement editBook
    throw UnimplementedError();
  }

  @override
  Future<List<Book>> getAllBooks() {
    // TODO: implement getAllBooks
    throw UnimplementedError();
  }

  @override
  Future<Book> getBookById(int id) {
    // TODO: implement getBookById
    throw UnimplementedError();
  }
}

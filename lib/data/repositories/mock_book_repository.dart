import 'package:book_list/data/models/book.dart';
import 'package:book_list/data/repositories/book_repository_interface.dart';

class MockBookRepository implements IBookRepository {
  List<Book> fakeBookDatabaseRecords = const [
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
  Future<void> addBook(Book b) async {
    return Future.delayed(const Duration(seconds: 1))
        .then((value) => fakeBookDatabaseRecords.add(b));
  }

  @override
  Future<void> deleteBookById(int id) async {
    return Future.delayed(const Duration(seconds: 1)).then((_) =>
        fakeBookDatabaseRecords.removeWhere((element) => element.id == id));
  }

  @override
  Future<void> editBook(Book b) {
    var elementIndex =
        fakeBookDatabaseRecords.indexWhere((element) => element.id == b.id);

    var updatedBook = fakeBookDatabaseRecords.elementAt(elementIndex).copyWith(
          title: b.title,
          author: b.author,
          pages: b.pages,
          status: b.status,
        );

    fakeBookDatabaseRecords.removeAt(elementIndex);

    return Future.delayed(const Duration(seconds: 2)).then(
      (_) => fakeBookDatabaseRecords.add(updatedBook),
    );
  }

  @override
  Future<List<Book>> getAllBooks() {
    return Future.delayed(
      const Duration(seconds: 2),
    ).then((_) => fakeBookDatabaseRecords);
  }

  @override
  Future<Book> getBookById(int id) {
    return Future.delayed(const Duration(seconds: 2)).then((_) =>
        fakeBookDatabaseRecords.where((element) => element.id == id).first);
  }
}

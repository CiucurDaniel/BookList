import 'package:book_list/data/models/book.dart';

abstract class IBookRepository {
  Future<List<Book>> getAllBooks();

  Future<Book> getBookById(int id);

  Future<void> addBook(Book b);

  Future<void> editBook(Book b);

  Future<void> deleteBookById(int id);

}
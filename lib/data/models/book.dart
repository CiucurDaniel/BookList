import 'package:equatable/equatable.dart';

enum Status { read, wantToRead, currentlyReading }

extension StatusExtension on Status {
  String simpleToString() {
    switch (this) {
      case Status.read:
        return 'read';
      case Status.wantToRead:
        return 'Want to read';
      case Status.currentlyReading:
        return 'Currently reading';
      default:
        return 'Unknown';
    }
  }
}

class Book extends Equatable {
  final int? id;
  final String title;
  final String author;
  final int pages;
  final Status status;

  const Book({
    this.id,
    required this.title,
    required this.author,
    required this.pages,
    required this.status,
  });

  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      'title': title,
      'author': author,
      'pages': pages.toString(),
      'status': status.name,
    };

    if (id != null) {
      map['id'] = id;
    }
    return map;
  }

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      id: map['id'],
      title: map['title'],
      author: map['author'],
      pages: map['pages'],
      status: Status.values.byName(map['status']),
    );
  }

  Book copyWith({
    String? id,
    String? title,
    String? author,
    int? pages,
    Status? status,
  }) {
    return Book(
        title: title ?? this.title,
        author: author ?? this.author,
        pages: pages ?? this.pages,
        status: status ?? this.status);
  }

  @override
  List<Object?> get props => [id, title, author, pages, status];
}

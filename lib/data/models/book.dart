enum Status { read, wantToRead, currentlyReading }

class Book {
  int? id;
  String title;
  String author;
  int pages;
  Status status;

  Book(
      {this.id,
      required this.title,
      required this.author,
      required this.pages,
      required this.status});

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

  Status _convertStringToEnum(String status) {
    if (status == 'read') {
      return Status.read;
    } else if (status == 'currentlyReading') {
      return Status.currentlyReading;
    } else {
      // status == 'wantToRead'
      return Status.wantToRead;
    }
  }
}

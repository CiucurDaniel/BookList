class Book {
  int? id;
  String title;
  String author;
  int pages;
  bool isReaded;

  Book(
      {this.id,
      required this.title,
      required this.author,
      required this.pages,
      required this.isReaded});

  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      'title': title,
      'author': author,
      'pages': pages.toString(),
      'readed': isReaded ? 1 : 0,
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
      isReaded: map['isReaded'] == '1' ? true : false,
    );
  }
}

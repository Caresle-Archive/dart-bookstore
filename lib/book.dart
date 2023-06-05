import 'generals.dart';

class Book implements SaveInfo {
  int id;
  String name;
  String author;
  double price;
  int existence;

  Book(this.id, this.name, this.author, this.price, this.existence) {}

  Book.Empty() : this(0, '', '', 0, 0);

  void Sell() {
    this.existence -= 1;
  }

  @override
  String toString() {
    return 'Id:$id\nName:$name\nAuthor:$author\nPrice:$price\nExistence:$existence';
  }

  @override
  String formatToSave() {
    return '$id|$name|$author|$price|$existence';
  }

  static int searchItem(int id, List<Book> books) {
    for (int i = 0; i < books.length; i++) {
      if (id == books[i].id) return i;
    }

    return -1;
  }
}
import 'generals.dart';

class Book implements SaveInfo {
  String name;
  String author;
  double price;
  int existence;

  Book(this.name, this.author, this.price, this.existence) {}

  Book.Empty() : this('', '', 0, 0);

  void Sell() {
    this.existence -= 1;
  }

  @override
  String toString() {
    return 'Name:$name\nAuthor:$author\nPrice:$price\nExistence:$existence';
  }

  @override
  String formatToSave() {
    return '$name|$author|$price|$existence';
  }
}
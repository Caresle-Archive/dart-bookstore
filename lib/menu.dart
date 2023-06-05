import 'book.dart';
import 'dart:io';

void mainMenu() {
  print('===\tMenu\t===');
  print('1) Book actions');
  print('2) Clients actions');
  print('s) Exit');
  print('===\tEND \t===');
}

void bookMenu() {
  print('1) Create book');
  print('2) Show Books');
  print('3) Update books');
  print('4) Delete Book');
  print('b) Back');
}

Book bookCreate() {
  print('Name: ');
  String name = stdin.readLineSync() ?? '';

  print('Author: ');
  String author = stdin.readLineSync() ?? '';
  
  print('Price: ');
  double price = double.parse(stdin.readLineSync() ?? '0');
  
  print('Existence: ');
  int existence = int.parse(stdin.readLineSync() ?? '0');

  var book = Book(name, author, price, existence);
  return book;
}

void bookShow(List<Book> books) {
  print('===\t BOOKS \t===');
  for (Book book in books)
    print(book);
  print('===\t  END  \t===');
}

void clientMenu() {
  print('1) Create client');
  print('2) Show Clients');
  print('3) Update clients');
  print('4) Delete clients');
  print('b) Back');
}
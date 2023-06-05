import 'lib/book.dart';
import 'lib/menu.dart' as menu;
import 'dart:io';

void handleBookMenu(List<Book> list) {
  String? option = '';
  menu.bookMenu();
  option = stdin.readLineSync();

  if (option == '1')
    list.add(menu.bookCreate());

  if (option == '2')
    menu.bookShow(list);
}

void main() {
  String? result = '';
  List<Book> books = List.empty(growable: true);

  while (result != 's') {
    menu.mainMenu();
    result = stdin.readLineSync();

    if (result == '1')
      handleBookMenu(books);

    if (result == '2')
      menu.clientMenu();

    // ADD CLEAR CONSOLE
  }
}
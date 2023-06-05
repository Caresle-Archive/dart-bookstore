import 'lib/book.dart';
import 'lib/menu.dart' as menu;
import 'lib/client.dart';
import 'init.dart';
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

void handleClientMenu(List<Client> clients) {
  String? option = '';
  menu.clientMenu();
  option = stdin.readLineSync();

  if (option == '1')
    clients.add(menu.clientCreate());
  
  if (option == '2')
    menu.clientShow(clients);

  if (option == '3')
    print('update clients');

  if (option == '4')
    print('delete clients');
}

void main() {
  Init.CreateConfig();
  String? result = '';
  List<Book> books = List.empty(growable: true);
  List<Client> clients = List.empty(growable: true);

  while (result != 's') {
    menu.mainMenu();
    result = stdin.readLineSync();

    if (result == '1')
      handleBookMenu(books);

    if (result == '2')
      handleClientMenu(clients);
    // ADD CLEAR CONSOLE
  }
}
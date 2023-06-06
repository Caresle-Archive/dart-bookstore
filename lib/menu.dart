import 'client.dart';
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

Book bookCreate({ int id = 0 }) {
  if (id == 0) {
    print('Id: ');
    id = int.parse(stdin.readLineSync() ?? '0');
  }
  print('Name: ');
  String name = stdin.readLineSync() ?? '';

  print('Author: ');
  String author = stdin.readLineSync() ?? '';
  
  print('Price: ');
  double price = double.parse(stdin.readLineSync() ?? '0');
  
  print('Existence: ');
  int existence = int.parse(stdin.readLineSync() ?? '0');

  var book = Book(id, name, author, price, existence);
  return book;
}

void bookShow(List<Book> books) {
  print('===\t BOOKS \t===');
  for (Book book in books)
    print(book);
  print('===\t  END  \t===');
}

void bookUpdate(List<Book> books) {
  print('Id:');
  int id = int.parse(stdin.readLineSync() ?? '0');
  int item = Book.searchItem(id, books);

  if (item == -1) {
    print('Book doesn\'t found');
    return;
  }

  books[item] = bookCreate(id: id);
}

void bookDelete(List<Book> books) {
  print('Id:');
  int id = int.parse(stdin.readLineSync() ?? '0');
  int item = Book.searchItem(id, books);
  
  if (item == -1) {
    print('Book doesn\'t found');
    return;
  }

  books.removeAt(item);
}

void clientMenu() {
  print('1) Create client');
  print('2) Show Clients');
  print('3) Update clients');
  print('4) Delete clients');
  print('b) Back');
}

Client clientCreate({ int id = 0 }) {
  if (id == 0) {
    print('Id:');
    id = int.parse(stdin.readLineSync() ?? '0');
  }
  print('Name:');
  String name = stdin.readLineSync() ?? '';
  print('Age:');
  int age = int.parse(stdin.readLineSync() ?? '0');

  var client = Client(id, name, age);
  return client;
}

void clientShow(List<Client> clients) {
  print('===\tClients\t===');
  for (Client client in clients)
    print(client);
  print('===\t  END  \t===');
}

void clientUpdate(List<Client> clients) {
  print('Id:');
  int id = int.parse(stdin.readLineSync() ?? '0');
  int item = Client.searchItem(id, clients);
  
  if (item == -1) {
    print('Doesn\'t found the client');
    return;
  }

  clients[item] = clientCreate(id: id);
}

void clientDelete(List<Client> clients) {
  print('Id:');
  int id = int.parse(stdin.readLineSync() ?? '0');
  int item = Client.searchItem(id, clients);

  if (item == -1) {
    print('Doesn\'t found the client');
    return;
  }

  clients.removeAt(item);
}
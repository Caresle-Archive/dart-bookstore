import 'dart:io';
import 'lib/book.dart';
import 'lib/client.dart';

class Init {
  static String _path = 'data';
  static String _fileBooks = '$_path/books.txt';
  static String _fileClients = '$_path/clients.txt';

  static void createFile(String path) {
    if (!File(path).existsSync()) {
      File(path).createSync();
    }
  }

  static void CreateConfig() {
    var directory = Directory(_path);

    if (!directory.existsSync()) {
      directory.createSync();
    }

    createFile(_fileBooks);
    createFile(_fileClients);
  }

  static List<String> readFile(path) {
    return File(path).readAsLinesSync();
  }

  static void loadData(List<Book> books, List<Client> clients) {
    var dataBooks = readFile(_fileBooks);
    for (var data in dataBooks) {
      var dataSplit = data.split('|');
      var book = Book.Empty();

      book.id = int.parse(dataSplit[0]);
      book.name = dataSplit[1];
      book.author = dataSplit[2];
      book.price = double.parse(dataSplit[3]);
      book.existence = int.parse(dataSplit[4]);

      books.add(book);
    }

    var dataClients = readFile(_fileClients);
    for (var data in dataClients) {
      var dataSplit = data.split('|');
      var client = Client.Empty();

      client.id = int.parse(dataSplit[0]);
      client.name = dataSplit[1];
      client.age = int.parse(dataSplit[2]);
      clients.add(client);
    }
  }

  static void saveFile(String path, String data) {
    File(path).writeAsStringSync(data);
  }

  static void finishProgram(List<Book> books, List<Client> clients) {
    var dataBooks = "";
    for (final book in books) {
      dataBooks += book.formatToSave() + '\n';
    }
    saveFile(_fileBooks, dataBooks);

    var dataClients = "";
    for (final client in clients) {
      dataClients += client.formatToSave();
    }
    saveFile(_fileClients, dataClients);
  }
}
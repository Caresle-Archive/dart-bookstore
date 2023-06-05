import 'dart:io';

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
}
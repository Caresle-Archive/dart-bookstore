import 'person.dart';

class Client extends Person {
  int id;
  Client(this.id, super.name, super.age) {}

  Client.Empty() : this(0, '', 0);

  @override
  String toString() {
    return 'Id:$id\n' + super.toString();
  }

  @override
  String formatToSave() {
    return '$id|$name|$age';
  }

  static int searchItem(int id, List<Client> clients) {
    for (int i = 0; i < clients.length; i++) {
      if (id == clients[i].id)
        return i;
    }
    
    return -1;
  }
}
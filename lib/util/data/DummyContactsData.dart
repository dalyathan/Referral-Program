// ignore_for_file: file_names
import '../../model/person.dart';

class DummyContactsData {
  static const String namekey = "name";
  static const String photoKey = "photo";
  static const String numberkey = "number";

  static List<Person> contacts = [
    Person("Surafel Melese", "https://randomuser.me/api/portraits/men/61.jpg",
        "+251 987654321"),
    Person("Eyob  Sisay", "https://randomuser.me/api/portraits/men/1.jpg",
        "+251 976453219"),
    Person("Beakal  Dereje", "https://randomuser.me/api/portraits/men/35.jpg",
        "+251 912678945"),
  ];
}

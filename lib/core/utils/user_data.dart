import '../../data/models/models.dart';

class UserData {
  static String id = 'null';
  static String uid = 'null';
  static String name = 'null';
  static String email = 'null';
  static String phoneNumber = 'null';

  static void set(User user) {
    id = user.id;
    uid = user.uid;
    name = user.name;
    email = user.email;
    phoneNumber = user.phoneNumber;
  }

  static void toInitial() {
    id = 'null';
    uid = 'null';
    name = 'null';
    email = 'null';
    phoneNumber = 'null';
  }
}

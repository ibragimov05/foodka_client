class User {
  final String id;
  final String uid;
  final String name;
  final String email;
  final String phoneNumber;

  const User({
    required this.id,
    required this.uid,
    required this.name,
    required this.email,
    required this.phoneNumber,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as String? ?? 'null',
        uid: json['uid'] as String? ?? 'null',
        name: json['name'] as String? ?? 'null',
        email: json['email'] as String? ?? 'null',
        phoneNumber: json['phone_number'] as String? ?? 'null',
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'uid': uid,
        'name': name,
        'email': email,
        'phone_number': phoneNumber,
      };
}

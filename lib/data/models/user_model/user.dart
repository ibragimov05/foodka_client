import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String id;
  final String uid;
  final String name;
  final String email;
  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  // token: user['idToken'],
  // refreshToken: user['refreshToken'],
  // expiresIn: DateTime.parse(user['expiresIn']),

  const User({
    required this.id,
    required this.uid,
    required this.name,
    required this.email,
    required this.phoneNumber,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

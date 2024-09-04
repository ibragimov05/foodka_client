// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String? ?? 'nu;;',
      uid: json['uid'] as String? ?? 'null',
      name: json['name'] as String? ?? 'null',
      email: json['email'] as String? ?? 'null',
      phoneNumber: json['phone_number'] as String? ?? 'null',
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
    };

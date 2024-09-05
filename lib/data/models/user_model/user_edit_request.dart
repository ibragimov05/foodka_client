class UserEditRequest {
  final String name;
  final String phoneNumber;

  const UserEditRequest({
    required this.name,
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() => <String, dynamic>{
        'name': name,
        'phone_number': phoneNumber,
      };
}

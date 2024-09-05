class UserAddRequest {
  final String uid;
  final String name;
  final String email;
  final String? phoneNumber;

  const UserAddRequest({
    required this.uid,
    required this.name,
    required this.email,
    this.phoneNumber,
  });

  Map<String, dynamic> toJson() => <String, dynamic>{};
}

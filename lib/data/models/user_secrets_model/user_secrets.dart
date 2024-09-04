class UserSecrets {
  final String localId;
  final String email;
  final String idToken;
  final String refreshToken;
  final DateTime expiresIn;

  const UserSecrets({
    required this.localId,
    required this.email,
    required this.idToken,
    required this.refreshToken,
    required this.expiresIn,
  });

  factory UserSecrets.fromJson(Map<String, dynamic> json) => UserSecrets(
        localId: json['localId'] as String,
        email: json['email'] as String,
        idToken: json['idToken'] as String,
        refreshToken: json['refreshToken'] as String,
        expiresIn: DateTime.parse(json['expiresIn'] as String),
      );

  Map<String, dynamic> toJson() => {
        'localId': localId,
        'email': email,
        'idToken': idToken,
        'refreshToken': refreshToken,
        'expiresIn': expiresIn.toIso8601String(),
      };
}

class Name {
  final String uz;
  final String ru;
  final String en;

  const Name({
    required this.uz,
    required this.ru,
    required this.en,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        uz: json['uz'],
        ru: json['ru'],
        en: json['en'],
      );

  Map<String, dynamic> toJson() => {
        'uz': uz,
        'ru': ru,
        'en': en,
      };
}

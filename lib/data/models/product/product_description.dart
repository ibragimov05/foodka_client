class Description {
  final String uz;
  final String ru;
  final String en;

  const Description({
    required this.uz,
    required this.ru,
    required this.en,
  });

  factory Description.fromJson(Map<String, dynamic> json) => Description(
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

class CategoryName {
  final String uz;
  final String ru;
  final String en;

 const CategoryName({
    required this.uz,
    required this.ru,
    required this.en,
  });

  factory CategoryName.fromJson(Map<String, dynamic> json) => CategoryName(
      uz: json['uz'],
      ru: json['ru'],
      en: json['en'],
    );
}
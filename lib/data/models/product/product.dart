import 'product_category_name.dart';
import 'product_name.dart';
import 'product_description.dart';

class Product {
  final String id;
  final String image;
  final num price;
  final Name name;
  final Description description;
  final CategoryName category;

  const Product({
    required this.id,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'],
        image: json['image'] ??
            'https://www.mysafetysign.com/img/lg/S/caution-testing-in-progress-sign-s-8894.png',
        name: Name.fromJson(json['name']),
        description: Description.fromJson(json['description']),
        price: json['price'],
        category: CategoryName.fromJson(json['category']),
      );
}

const List<Product> products = [
  Product(
    id: '1',
    image:
        'https://www.mysafetysign.com/img/lg/S/caution-testing-in-progress-sign-s-8894.png',
    name: Name(
      uz: 'uz',
      ru: 'ru',
      en: 'en',
    ),
    description: Description(
      uz: 'Description uz',
      ru: 'Description ru',
      en: 'Description en',
    ),
    price: 100,
    category: CategoryName(uz: 'uz', ru: 'ru', en: 'en'),
  ),
];

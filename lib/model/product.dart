import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int prize, size, id;

  final Color color;

  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.prize,
    required this.size,
    required this.id,
    required this.color,
  });
}

List<Product> products = [
  Product(
      image: 'images/1.png',
      title: 'Office Code',
      description: dummyText,
      prize: 234,
      size: 12,
      id: 1,
      color: Color(0xFF3D82AE)),
  Product(
      image: 'images/2.png',
      title: 'Belt Bag',
      description: dummyText,
      prize: 234,
      size: 12,
      id: 2,
      color: Color(0xFFD3A984)),
  Product(
      image: 'images/3.png',
      title: 'Old Fashion',
      description: dummyText,
      prize: 234,
      size: 12,
      id: 3,
      color: Color(0xFF989493)),
  Product(
      image: 'images/4.png',
      title: 'Belt Bag',
      description: dummyText,
      prize: 234,
      size: 12,
      id: 4,
      color: Color(0xFFE6B398)),
  Product(
      image: 'images/5.png',
      title: 'Belt Bag',
      description: dummyText,
      prize: 234,
      size: 12,
      id: 5,
      color: Color(0xFFFB7883)),
  Product(
      image: 'images/6.png',
      title: 'Belt Bag',
      description: dummyText,
      prize: 234,
      size: 12,
      id: 6,
      color: Color(0xFFAEAEAE)),
];

String dummyText =
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry standard dummy text ever since when an unknown printer took a galley';

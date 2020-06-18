import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Item {
  String id;
  String name;
  String description;
  int price;
  bool inStock;
  String imageUrl;
  Item(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.inStock,
      this.imageUrl});
  String get formattedAvailability => inStock ? "Available" : "Out of stock";
  String get formattedPrice => Item.formatter.format(this.price);
  Color get availabilityColor => inStock ? Colors.grey : Colors.red;
  static final formatter =
      NumberFormat.currency(locale: 'id_ID', symbol: "Rp ");
  static List<Item> get dummyItems => [
        Item(
          id: "1",
          name: "iPhone X (Product RED)             ",
          description: 'More magical than ever.',
          price: 12499999,
          inStock: true,
          imageUrl: 'assets/img/1.png',
        ),
        Item(
          id: "2",
          name: "AirPods with Wireless Charging Case",
          description: 'More magical than ever.',
          price: 2999999,
          inStock: true,
          imageUrl: 'assets/img/2.png',
        ),
        Item(
          id: "3",
          name: "iPhone X Max (GOLD)",
          description: 'More magical than ever.',
          price: 18999999,
          inStock: true,
          imageUrl: 'assets/img/3.png',
        ),
        Item(
          id: "4",
          name: "iPhone X (SILVER)",
          description: 'More magical than ever.',
          price: 14999999,
          inStock: true,
          imageUrl: 'assets/img/4.png',
        ),
        Item(
          id: "5",
          name: "iPad Pro (SPACE GRAY)",
          description: 'More magical than ever.',
          price: 13999999,
          inStock: true,
          imageUrl: 'assets/img/5.png',
        ),
        Item(
          id: "6",
          name: "Apple Watch Silver Aluminum (44 mm)",
          description: 'More magical than ever.',
          price: 8999999,
          inStock: false,
          imageUrl: 'assets/img/6.png',
        ),
      ];
}

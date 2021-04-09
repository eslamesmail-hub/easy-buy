import 'package:easy_buy/helper/extention.dart';
import 'package:flutter/material.dart';

class ProductModel {
  String name, image, description, size, price, productId;
  Color color;

  ProductModel(
      {this.name,
      this.image,
      this.description,
      this.color,
      this.size,
      this.price,
      this.productId});

  ProductModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    name = map['name'];
    image = map['image'];
    description = map['description'];
    color = HexColor.fromHex(map['color']);
    size = map['size'];
    price = map['price'];
    productId = map['productId'];
  }

  toJson() {
    return {
      'name': name,
      'image': image,
      'description': description,
      'color': color,
      'size': size,
      'price': price,
      'productId': productId,
    };
  }
}

import 'package:flutter/foundation.dart';

import 'package:thinkforliving/module/product.dart';

class Consumer {
  final String name;
  final String email;
  final String phone;
  final List<Product> products;
  Consumer({
    this.name,
    this.email,
    this.phone,
    this.products,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'products': List<dynamic>.from(products.map((x) => x.toMap())),
    };
  }

  static Consumer fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Consumer(
      name: map['name'],
      email: map['email'],
      phone: map['phone'],
      products:
          List<Product>.from(map['products']?.map((x) => Product.fromMap(x))),
    );
  }

  @override
  String toString() {
    return 'Consumer(name: $name, email: $email, phone: $phone, products: $products)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Consumer &&
        o.name == name &&
        o.email == email &&
        o.phone == phone &&
        listEquals(o.products, products);
  }

  @override
  int get hashCode {
    return name.hashCode ^ email.hashCode ^ phone.hashCode ^ products.hashCode;
  }
}

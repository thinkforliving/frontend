class Product {
  final String productName;
  Product({
    this.productName,
  });

  Map<String, dynamic> toMap() {
    return {
      'productName': productName,
    };
  }

  static Product fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Product(
      productName: map['productName'],
    );
  }

  @override
  String toString() => 'Product(productName: $productName)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Product && o.productName == productName;
  }

  @override
  int get hashCode => productName.hashCode;
}

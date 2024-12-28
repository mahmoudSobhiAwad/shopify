class ProductModel {
  late final String _productName;
  late final String? _productImageUrl;
  late final double _productPrice;
  late bool _proudctIsCarted;

  // Constructor to init data
  ProductModel({
    required String productName,
    String? imageUrl,
    required double productPrice,
  }) {
    _productName = productName;
    _productImageUrl = imageUrl;
    _productPrice = productPrice;
    _proudctIsCarted = false;
  }
  //setter method for update product carted state
  void setProductCarted() {
    _proudctIsCarted = !_proudctIsCarted;
  }
  // getter method for products

  String get productName => _productName;
  String? get productImage => _productImageUrl;
  double get proudctPrice => _productPrice;
  bool get proudctStatus => _proudctIsCarted;
}

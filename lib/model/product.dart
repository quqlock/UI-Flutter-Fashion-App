class Product {
  String productName;
  double productPrice;
  double productPriceOld;
  String productImage;

  Product(
    this.productName,
    this.productPrice,
    this.productPriceOld,
    this.productImage,
  );
}

List<Product> productsList = [
  Product('Felt wide hat', 84.00, 0, 'assets/images/products/hat1.jpg'),
  Product('Felt white brim hat', 138.00, 0, 'assets/images/products/hat2.jpg'),
  Product(
      'Felt hat for women', 76.00, 89.00, 'assets/images/products/hat3.jpg'),
  Product('Summer hat', 54.00, 159.00, 'assets/images/products/hat4.jpg'),
  Product('Felt wide hat', 84.00, 0, 'assets/images/products/hat1.jpg'),
  Product('Felt wide hat', 84.00, 99.00, 'assets/images/products/hat1.jpg'),
  Product(
      'Felt hat for women', 76.00, 109.00, 'assets/images/products/hat3.jpg'),
  Product('Summer hat', 54.00, 0, 'assets/images/products/hat4.jpg'),
  Product('Summer hat', 54.00, 159.00, 'assets/images/products/hat4.jpg'),
  Product('Felt wide hat', 84.00, 0, 'assets/images/products/hat1.jpg'),
  Product('Felt wide hat', 84.00, 99.00, 'assets/images/products/hat1.jpg'),
  Product(
      'Felt hat for women', 76.00, 109.00, 'assets/images/products/hat3.jpg'),
  Product('Summer hat', 54.00, 0, 'assets/images/products/hat4.jpg'),
];

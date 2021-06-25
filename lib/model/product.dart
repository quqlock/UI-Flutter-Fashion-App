class Product {
  final String productName;
  final double productPrice;
  final double? productPriceOld;
  final String productImage;
  final String productDesc;

  Product({
    required this.productName,
    required this.productPrice,
    this.productPriceOld,
    required this.productImage,
    required this.productDesc,
  });
}

final List<Product> productsList = [
  Product(
      productName: 'Felt wide hat',
      productPrice: 84.00,
      productImage: 'assets/images/products/hat1.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productName: 'Felt white brim-hat',
      productPrice: 138.00,
      productImage: 'assets/images/products/hat2.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productName: 'Felt hat for women',
      productPrice: 76.00,
      productPriceOld: 89.00,
      productImage: 'assets/images/products/hat3.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productName: 'Summer hat',
      productPrice: 54.00,
      productPriceOld: 159.00,
      productImage: 'assets/images/products/hat4.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productName: 'Felt wide-hat',
      productPrice: 84.00,
      productImage: 'assets/images/products/hat1.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productName: 'Felt wide hat',
      productPrice: 84.00,
      productPriceOld: 99.00,
      productImage: 'assets/images/products/hat1.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productName: 'Felt hat for women',
      productPrice: 76.00,
      productPriceOld: 109.00,
      productImage: 'assets/images/products/hat3.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productName: 'Summer hat',
      productPrice: 54.00,
      productImage: 'assets/images/products/hat4.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productName: 'Summer hat',
      productPrice: 54.00,
      productPriceOld: 159.00,
      productImage: 'assets/images/products/hat4.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productName: 'Felt wide-hat',
      productPrice: 84.00,
      productImage: 'assets/images/products/hat1.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productName: 'Felt wide-hat',
      productPrice: 84.00,
      productPriceOld: 99.00,
      productImage: 'assets/images/products/hat1.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productName: 'Felt hat for women',
      productPrice: 76.00,
      productPriceOld: 109.00,
      productImage: 'assets/images/products/hat3.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
    productName: 'Summer hat',
    productPrice: 54.00,
    productImage: 'assets/images/products/hat4.jpg',
    productDesc:
        'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.',
  ),
];

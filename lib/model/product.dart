class Product {
  final String productId;
  final String productName;
  final double productPrice;
  final double? productPriceOld;
  final String productImage;
  final String productDesc;

  Product({
    required this.productId,
    required this.productName,
    required this.productPrice,
    this.productPriceOld,
    required this.productImage,
    required this.productDesc,
  });
}

final List<Product> productsList = [
  Product(
      productId: '00001',
      productName: 'Felt wide hat',
      productPrice: 84.00,
      productImage: 'assets/images/products/hat1.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productId: '00002',
      productName: 'Felt white brim-hat',
      productPrice: 138.00,
      productImage: 'assets/images/products/hat2.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productId: '00003',
      productName: 'Felt hat for women',
      productPrice: 76.00,
      productPriceOld: 89.00,
      productImage: 'assets/images/products/hat3.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productId: '00004',
      productName: 'Summer hat',
      productPrice: 54.00,
      productPriceOld: 159.00,
      productImage: 'assets/images/products/hat4.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productId: '00005',
      productName: 'Felt wide-hat',
      productPrice: 84.00,
      productImage: 'assets/images/products/hat1.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productId: '00006',
      productName: 'Felt wide hat',
      productPrice: 84.00,
      productPriceOld: 99.00,
      productImage: 'assets/images/products/hat1.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productId: '00007',
      productName: 'Felt hat for women',
      productPrice: 76.00,
      productPriceOld: 109.00,
      productImage: 'assets/images/products/hat3.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productId: '00008',
      productName: 'Summer hat',
      productPrice: 54.00,
      productImage: 'assets/images/products/hat4.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productId: '00009',
      productName: 'Summer hat',
      productPrice: 54.00,
      productPriceOld: 159.00,
      productImage: 'assets/images/products/hat4.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productId: '00010',
      productName: 'Felt wide-hat',
      productPrice: 84.00,
      productImage: 'assets/images/products/hat1.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productId: '00011',
      productName: 'Felt wide-hat',
      productPrice: 84.00,
      productPriceOld: 99.00,
      productImage: 'assets/images/products/hat1.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
      productId: '00012',
      productName: 'Felt hat for women',
      productPrice: 76.00,
      productPriceOld: 109.00,
      productImage: 'assets/images/products/hat3.jpg',
      productDesc:
          'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.'),
  Product(
    productId: '00013',
    productName: 'Summer hat',
    productPrice: 54.00,
    productImage: 'assets/images/products/hat4.jpg',
    productDesc:
        'Featured on several of the runway look, the hight-domed that hat is made from straw effect fabroc interwomen with shiny threads.',
  ),
];

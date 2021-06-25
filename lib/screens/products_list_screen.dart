import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/const.dart';
import 'package:flutter_fashion_app/model/cart.dart';
import 'package:flutter_fashion_app/model/product.dart';
import 'package:flutter_fashion_app/screens/cart_screen.dart';
import 'package:flutter_fashion_app/screens/product_screen.dart';
import 'package:provider/provider.dart';

class ProductsListScreen extends StatefulWidget {
  const ProductsListScreen({Key? key}) : super(key: key);

  @override
  _ProductsListScreenState createState() => _ProductsListScreenState();
}

class _ProductsListScreenState extends State<ProductsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: backgroundColor,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/women5.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 15,
                      left: 15,
                      child: Text(
                        'Rag & Bone Collection',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        onPressed: () => print('Add to favorite'),
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.80,
                      ),
                      itemCount: productsList.length,
                      itemBuilder: (context, index) {
                        return buildProductCardWidget(index);
                      }),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    color: blackColor,
                    width: double.infinity,
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        right: 15.0,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Cart',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  'Items',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CartScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: mainColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                      Provider.of<Cart>(context)
                                          .showItemsNumber()
                                          .toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProductCardWidget(int index) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(productsList[index]),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                productsList[index].productImage,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productsList[index].productName,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '\$' + productsList[1].productPrice.toStringAsFixed(2),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  (productsList[index].productPriceOld != null)
                      ? Text(
                          '\$' +
                              productsList[index]
                                  .productPriceOld!
                                  .toStringAsFixed(2),
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

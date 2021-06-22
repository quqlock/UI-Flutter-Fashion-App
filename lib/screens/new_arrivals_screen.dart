import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/const.dart';
import 'package:flutter_fashion_app/model/arrivals.dart';
import 'package:flutter_fashion_app/screens/products_list_screen.dart';
import 'package:page_view_indicators/page_view_indicators.dart';

class NewArrivalsScreen extends StatefulWidget {
  @override
  _NewArrivalsScreenState createState() => _NewArrivalsScreenState();
}

class _NewArrivalsScreenState extends State<NewArrivalsScreen> {
  final int _arrivalsListlength = newArrivalsList.length;
  final _pageViewController = PageController();
  final _pageIndexNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: buildArrivalsPagesWidget(
            context, _arrivalsListlength, _pageIndexNotifier),
      ),
    );
  }

  Widget buildArrivalsPagesWidget(
    BuildContext context,
    _arrivalsListLength,
    _pageIndexNotifier,
  ) {
    return PageView.builder(
      itemCount: _arrivalsListlength,
      controller: _pageViewController,
      itemBuilder: (BuildContext context, int index) {
        return buildArrivalWidget(
          context,
          newArrivalsList[index].arrImage,
          newArrivalsList[index].arrTitle,
          newArrivalsList[index].arrSubtitle,
          _arrivalsListLength,
          _pageIndexNotifier,
        );
      },
      onPageChanged: (int index) {
        _pageIndexNotifier.value = index;
      },
    );
  }

  Widget buildArrivalWidget(
    BuildContext context,
    String arrImg,
    String arrTitle,
    String arrSubtitle,
    _arrivalsListLength,
    _pageIndexNotifier,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Image.asset(
            arrImg,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Positioned(
            top: 30,
            left: 15,
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
          ),
          Positioned(
            top: 30,
            right: 15,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  arrTitle.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Text(
                    arrSubtitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            right: 15,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductsListScreen(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 20,
                  ),
                  color: blackColor,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 20,
            child: CirclePageIndicator(
              dotColor: Colors.grey,
              selectedDotColor: Colors.white,
              itemCount: _arrivalsListlength,
              currentPageNotifier: _pageIndexNotifier,
            ),
          ),
        ],
      ),
    );
  }
}

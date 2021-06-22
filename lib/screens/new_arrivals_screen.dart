import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/const.dart';
import 'package:flutter_fashion_app/model/arrivals.dart';

class NewArrilasScreen extends StatelessWidget {
  const NewArrilasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: buildArrivalsPagesWidget(context),
      ),
    );
  }

  Widget buildArrivalsPagesWidget(BuildContext context) {
    return PageView(
      children: [
        for (Arrival arr in newArrivalsList)
          buildAdvertWidget(
            context,
            arr.arrImage,
            arr.arrTitle,
            arr.arrSubtitle,
          ),
      ],
    );
  }

  Widget buildAdvertWidget(
    BuildContext context,
    String advImg,
    String advTitle,
    String advName,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Image.asset(
            advImg,
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
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 30,
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
                  advTitle.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Text(
                    advName,
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
                child: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: blackColor,
                  size: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

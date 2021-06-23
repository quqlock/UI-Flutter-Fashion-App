import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/const.dart';

Widget buildBigButtonWidget(Function tapFunc, String buttonText) {
  return SizedBox(
    width: double.infinity,
    child: ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        height: 55,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: mainColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () => tapFunc(),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 18),
        ),
      ),
    ),
  );
}

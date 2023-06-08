import 'package:flutter/material.dart';

import 'colors.dart';
import 'constant_string.dart';

const Map<String, String> customHeaders = {
  "app_version": "1",
  "platform": "Android",
  "version": "108"
};

Widget loadingView({message = "Please wait..."}) {
  return Center(child: CircularProgressIndicator(color: color[900]));
}

Widget noDataView(String type) => Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/offline.png",
            height: 180,
          ),
          Text(
            type,
            style: titleTextStyle(
              txtColor: color[800],
            ),
          ),
        ],
      ),
    );

const Map<String, String> errorDataItem = {
  noInternet: "assets/images/offline.png",
  noData: "assets/images/noData.png",
  somethingWrong: "assets/images/oops.png"
};

TextStyle titleTextStyle({txtColor = Colors.white}) {
  return TextStyle(fontSize: 16, color: txtColor, fontWeight: FontWeight.w700);
}

Widget customSpacing({
  double? wt,
  double? ht,
}) {
  return SizedBox(
    width: wt,
    height: ht,
  );
}

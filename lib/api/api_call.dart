import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:vlplhackathon/utils/home_model.dart';
import '../utils/constant_string.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'dart:async';
import '../utils/constants.dart';

class ApiCall {
  static Future<bool> isConnected() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }

    return false;
  }

  static Future<http.Response> apiCall(String endPoint, Object? apiBody) async {
    var netStatus = await isConnected();
    if (!netStatus) {
      return http.Response(noInternet, noNetCode);
    }
    var url = Uri.parse(BASE_URL + endPoint);
    debugPrint('Request : $apiBody $url');
    var response = await http.post(url, headers: customHeaders, body: apiBody);
    debugPrint('Response : ${response.statusCode} ${response.body}');

    return response;
  }

  static Future<home_model> getApiCall(String endPoint) async {
    var netStatus = await isConnected();
    // if (!netStatus) {
    //   return http.Response(noInternet, noNetCode);
    // }
    var url = Uri.parse(BASE_URL + endPoint);
    debugPrint('Request Url: $url');
    var response = await http.post(url, headers: customHeaders);
    debugPrint('Response : ${response.statusCode} ${response.body}');
    var data = home_model.fromJson(jsonDecode(response.body));
    return data;
  }
}

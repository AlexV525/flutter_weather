///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-01 18:48
///
import 'package:flutter/material.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

enum FetchType { get, post }

class API {
  static final dio = Dio();

  static final cookieJar = CookieJar();
  static final cookieManager = CookieManager(cookieJar);

  static void initConfig() async {
    dio.interceptors.add(cookieManager);
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (_) {},
      onError: (DioError e) {
        debugPrint(e.request.baseUrl);
        return e;
      },
    ));
  }

  static Future fetch(
    FetchType type,
    String url, {
    data,
    Map<String, dynamic> headers,
  }) async {
    Response response;
    switch (type) {
      case FetchType.get:
        response = await dio.get(url, queryParameters: data);
        break;
      case FetchType.post:
        response = await dio.post(url, data: data);
        break;
    }
    return response.data;
  }

  /// APIs.
  static final weather = "https://wis.qq.com/weather/common";

  static Map<String, dynamic> weatherRequestQuery({
    List<String> types = const [
      'air',
      'alarm',
      'forecast_1h',
      'forecast_24h',
      'index',
      'limit',
      'observe',
      'rise',
    ],
    @required String province,
    @required String city,
    String county,
  }) {
    return <String, dynamic>{
      'source': 'xw',
      'weather_type': types.join('|'),
      'province': province,
      'city': city,
      if (county != null) 'county': county,
    };
  }
}

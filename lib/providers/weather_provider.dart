///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-03 17:43
///
import 'package:flutter/material.dart';
import 'package:weather/constants/constants.dart';

class WeatherProvider extends ChangeNotifier {
  String province;
  String city;
  String county;

  void initLocation({
    @required String province,
    @required String city,
    String county,
  }) {
    this
      ..province = province
      ..city = city
      ..county = county;
  }

  Future fetchWeather() async {
    final response = API.fetch(
      FetchType.get,
      API.weather,
      data: API.weatherRequestQuery(province: this.province, city: this.city, county: this.county),
    );
  }
}

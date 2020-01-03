///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-03 17:15
///
part of '../constants/beans.dart';

@HiveType()
class Observe {
  String degree;
  String humidity;
  String precipitation;
  String pressure;
  String updateTime;
  String weather;
  String weatherCode;
  String weatherShort;
  String windDirection;
  String windPower;

  Observe(
      {this.degree,
      this.humidity,
      this.precipitation,
      this.pressure,
      this.updateTime,
      this.weather,
      this.weatherCode,
      this.weatherShort,
      this.windDirection,
      this.windPower});

  Observe.fromJson(Map<String, dynamic> json) {
    degree = json['degree'];
    humidity = json['humidity'];
    precipitation = json['precipitation'];
    pressure = json['pressure'];
    updateTime = json['update_time'];
    weather = json['weather'];
    weatherCode = json['weather_code'];
    weatherShort = json['weather_short'];
    windDirection = json['wind_direction'];
    windPower = json['wind_power'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['degree'] = this.degree;
    data['humidity'] = this.humidity;
    data['precipitation'] = this.precipitation;
    data['pressure'] = this.pressure;
    data['update_time'] = this.updateTime;
    data['weather'] = this.weather;
    data['weather_code'] = this.weatherCode;
    data['weather_short'] = this.weatherShort;
    data['wind_direction'] = this.windDirection;
    data['wind_power'] = this.windPower;
    return data;
  }

  @override
  String toString() {
    return 'Observe ${JsonEncoder.withIndent('  ').convert(toJson())}';
  }
}

///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-03 17:15
///
part of '../constants/beans.dart';

@HiveType()
class Observe extends HiveObject {
  @HiveField(0)
  String degree;
  @HiveField(1)
  String humidity;
  @HiveField(2)
  String precipitation;
  @HiveField(3)
  String pressure;
  @HiveField(4)
  String updateTime;
  @HiveField(5)
  String weather;
  @HiveField(6)
  String weatherCode;
  @HiveField(7)
  String weatherShort;
  @HiveField(8)
  String windDirection;
  @HiveField(9)
  String windPower;

  Observe({
    this.degree,
    this.humidity,
    this.precipitation,
    this.pressure,
    this.updateTime,
    this.weather,
    this.weatherCode,
    this.weatherShort,
    this.windDirection,
    this.windPower,
  });

  Observe.fromJson(Map<String, dynamic> json) {
    json.forEach((k, v) {
      if (json[k] == "") json[k] = null;
    });
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

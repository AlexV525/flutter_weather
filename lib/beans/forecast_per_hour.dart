///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-01 14:22
///
part of '../constants/beans.dart';

@HiveType()
class ForecastPerHour extends HiveObject {
  @HiveField(0)
  int degree;
  @HiveField(1)
  String updateTime;
  @HiveField(2)
  String weather;
  @HiveField(3)
  String weatherCode;
  @HiveField(4)
  String weatherShort;
  @HiveField(5)
  String windDirection;
  @HiveField(6)
  String windPower;

  ForecastPerHour({
    this.degree,
    this.updateTime,
    this.weather,
    this.weatherCode,
    this.weatherShort,
    this.windDirection,
    this.windPower,
  });

  ForecastPerHour.fromJson(Map<String, dynamic> json) {
    json.forEach((k, v) {
      if (json[k] == "") json[k] = null;
    });
    degree = int.tryParse(json['degree']);
    updateTime = json['update_time'];
    weather = json['weather'];
    weatherCode = json['weather_code'];
    weatherShort = json['weather_short'];
    windDirection = json['wind_direction'];
    windPower = json['wind_power'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['degree'] = this.degree.toString();
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
    return 'ForecastPerHour ${JsonEncoder.withIndent('  ').convert(toJson())}';
  }
}

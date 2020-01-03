///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-01 20:28
///
part of '../constants/beans.dart';

@HiveType()
class ForecastPerDay extends HiveObject {
  @HiveField(0)
  String dayWeather;
  @HiveField(1)
  String dayWeatherCode;
  @HiveField(2)
  String dayWeatherShort;
  @HiveField(3)
  String dayWindDirection;
  @HiveField(4)
  String dayWindDirectionCode;
  @HiveField(5)
  String dayWindPower;
  @HiveField(6)
  String dayWindPowerCode;
  @HiveField(7)
  int maxDegree;
  @HiveField(8)
  int minDegree;
  @HiveField(9)
  String nightWeather;
  @HiveField(10)
  String nightWeatherCode;
  @HiveField(11)
  String nightWeatherShort;
  @HiveField(12)
  String nightWindDirection;
  @HiveField(13)
  String nightWindDirectionCode;
  @HiveField(14)
  String nightWindPower;
  @HiveField(15)
  String nightWindPowerCode;
  @HiveField(16)
  String time;

  ForecastPerDay({
    this.dayWeather,
    this.dayWeatherCode,
    this.dayWeatherShort,
    this.dayWindDirection,
    this.dayWindDirectionCode,
    this.dayWindPower,
    this.dayWindPowerCode,
    this.maxDegree,
    this.minDegree,
    this.nightWeather,
    this.nightWeatherCode,
    this.nightWeatherShort,
    this.nightWindDirection,
    this.nightWindDirectionCode,
    this.nightWindPower,
    this.nightWindPowerCode,
    this.time,
  });

  ForecastPerDay.fromJson(Map<String, dynamic> json) {
    dayWeather = json['day_weather'];
    dayWeatherCode = json['day_weather_code'];
    dayWeatherShort = json['day_weather_short'];
    dayWindDirection = json['day_wind_direction'];
    dayWindDirectionCode = json['day_wind_direction_code'];
    dayWindPower = json['day_wind_power'];
    dayWindPowerCode = json['day_wind_power_code'];
    maxDegree = int.tryParse(json['max_degree']);
    minDegree = int.tryParse(json['min_degree']);
    nightWeather = json['night_weather'];
    nightWeatherCode = json['night_weather_code'];
    nightWeatherShort = json['night_weather_short'];
    nightWindDirection = json['night_wind_direction'];
    nightWindDirectionCode = json['night_wind_direction_code'];
    nightWindPower = json['night_wind_power'];
    nightWindPowerCode = json['night_wind_power_code'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['day_weather'] = this.dayWeather;
    data['day_weather_code'] = this.dayWeatherCode;
    data['day_weather_short'] = this.dayWeatherShort;
    data['day_wind_direction'] = this.dayWindDirection;
    data['day_wind_direction_code'] = this.dayWindDirectionCode;
    data['day_wind_power'] = this.dayWindPower;
    data['day_wind_power_code'] = this.dayWindPowerCode;
    data['max_degree'] = this.maxDegree.toString();
    data['min_degree'] = this.minDegree.toString();
    data['night_weather'] = this.nightWeather;
    data['night_weather_code'] = this.nightWeatherCode;
    data['night_weather_short'] = this.nightWeatherShort;
    data['night_wind_direction'] = this.nightWindDirection;
    data['night_wind_direction_code'] = this.nightWindDirectionCode;
    data['night_wind_power'] = this.nightWindPower;
    data['night_wind_power_code'] = this.nightWindPowerCode;
    data['time'] = this.time;
    return data;
  }

  @override
  String toString() {
    return 'ForecastPerDay ${JsonEncoder.withIndent('  ').convert(toJson())}';
  }
}

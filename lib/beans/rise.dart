///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-03 23:08
///
part of '../constants/beans.dart';

@HiveType()
class Rise extends HiveObject {
  @HiveField(0)
  String sunrise;
  @HiveField(1)
  String sunset;
  @HiveField(2)
  String time;

  Rise({this.sunrise, this.sunset, this.time});

  Rise.fromJson(Map<String, dynamic> json) {
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    data['time'] = this.time;
    return data;
  }
}

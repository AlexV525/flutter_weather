///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-01 21:09
///
part of '../constants/beans.dart';

@HiveType()
class Air extends HiveObject {
  @HiveField(0)
  int aqi;
  @HiveField(1)
  int aqiLevel;
  @HiveField(2)
  String aqiName;
  @HiveField(3)
  String co;
  @HiveField(4)
  String no2;
  @HiveField(5)
  String o3;
  @HiveField(6)
  String pm10;
  @HiveField(7)
  String pm25;
  @HiveField(8)
  String so2;
  @HiveField(9)
  String updateTime;

  Air({
    this.aqi,
    this.aqiLevel,
    this.aqiName,
    this.co,
    this.no2,
    this.o3,
    this.pm10,
    this.pm25,
    this.so2,
    this.updateTime,
  });

  Air.fromJson(Map<String, dynamic> json) {
    json.forEach((k, v) {
      if (json[k] == "") json[k] = null;
    });
    aqi = json['aqi'];
    aqiLevel = json['aqi_level'];
    aqiName = json['aqi_name'];
    co = json['co'];
    no2 = json['no2'];
    o3 = json['o3'];
    pm10 = json['pm10'];
    pm25 = json['pm2.5'];
    so2 = json['so2'];
    updateTime = json['update_time'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['aqi'] = this.aqi;
    data['aqi_level'] = this.aqiLevel;
    data['aqi_name'] = this.aqiName;
    data['co'] = this.co;
    data['no2'] = this.no2;
    data['o3'] = this.o3;
    data['pm10'] = this.pm10;
    data['pm2.5'] = this.pm25;
    data['so2'] = this.so2;
    data['update_time'] = this.updateTime;
    return data;
  }

  @override
  String toString() {
    return 'Air ${JsonEncoder.withIndent('  ').convert(toJson())}';
  }
}

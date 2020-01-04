///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-03 22:53
///
part of '../constants/beans.dart';

@HiveType()
class Limit extends HiveObject {
  @HiveField(0)
  String tailNumber;
  @HiveField(1)
  String time;

  Limit({this.tailNumber, this.time});

  Limit.fromJson(Map<String, dynamic> json) {
    json.forEach((k, v) {
      if (json[k] == "") json[k] = null;
    });
    tailNumber = json['tail_number'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['tail_number'] = this.tailNumber;
    data['time'] = this.time;
    return data;
  }
}

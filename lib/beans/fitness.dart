///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-01 20:29
///
part of '../constants/beans.dart';

@HiveType()
class Fitness extends HiveObject {
  @HiveField(0)
  String detail;
  @HiveField(1)
  String info;
  @HiveField(2)
  String name;

  Fitness({this.detail, this.info, this.name});

  Fitness.fromJson(Map<String, dynamic> json) {
    detail = json['detail'];
    info = json['info'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['detail'] = this.detail;
    data['info'] = this.info;
    data['name'] = this.name;
    return data;
  }
}

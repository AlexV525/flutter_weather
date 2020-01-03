///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-03 17:30
///
part of '../constants/beans.dart';

class Alarm {
  String city;
  String county;
  String detail;
  String info;
  String levelCode;
  String levelName;
  String province;
  String typeCode;
  String typeName;
  String updateTime;
  String url;

  Alarm({
    this.city,
    this.county,
    this.detail,
    this.info,
    this.levelCode,
    this.levelName,
    this.province,
    this.typeCode,
    this.typeName,
    this.updateTime,
    this.url,
  });

  Alarm.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    county = json['county'];
    detail = json['detail'];
    info = json['info'];
    levelCode = json['level_code'];
    levelName = json['level_name'];
    province = json['province'];
    typeCode = json['type_code'];
    typeName = json['type_name'];
    updateTime = json['update_time'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['county'] = this.county;
    data['detail'] = this.detail;
    data['info'] = this.info;
    data['level_code'] = this.levelCode;
    data['level_name'] = this.levelName;
    data['province'] = this.province;
    data['type_code'] = this.typeCode;
    data['type_name'] = this.typeName;
    data['update_time'] = this.updateTime;
    data['url'] = this.url;
    return data;
  }

  @override
  String toString() {
    return 'Alarm ${JsonEncoder.withIndent('  ').convert(toJson())}';
  }
}

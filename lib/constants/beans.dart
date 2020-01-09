///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-01 14:26
///
import 'dart:convert';

import 'package:hive/hive.dart';

part '../beans/air.dart';
part '../beans/alarm.dart';
part '../beans/forecast_per_hour.dart';
part '../beans/forecast_per_day.dart';
part '../beans/fitness.dart';
part '../beans/fitness_index.dart';
part '../beans/limit.dart';
part '../beans/observe.dart';
part '../beans/rise.dart';

part 'beans.g.dart';

class HiveAdapterTypeIds {
  static const int air = 0;
  static const int alarm = 1;
  static const int fitness = 2;
  static const int fitnessIndex = 3;
  static const int forecastPerDay = 4;
  static const int forecastPerHour = 5;
  static const int limit = 6;
  static const int observe = 7;
  static const int rise = 8;
}

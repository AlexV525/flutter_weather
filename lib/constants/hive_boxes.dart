///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-01 14:45
///
import 'package:hive/hive.dart';

import 'package:weather/constants/constants.dart';

class HiveBoxes {
  static int adapterIndex = 0;
  static Box<ForecastPerDay> forecastPerDayBox;
  static Box<ForecastPerHour> forecastPerHourBox;

  static Future openBoxes() async {
    Hive.registerAdapter(ForecastPerDayAdapter(), adapterIndex++);

    forecastPerDayBox = await Hive.openBox<ForecastPerDay>('forecast_per_day');
    forecastPerHourBox =
        await Hive.openBox<ForecastPerHour>('forecast_per_hour');
  }

  static Future clearBoxes() async {
    await forecastPerDayBox?.clear();
  }
}

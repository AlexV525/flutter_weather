///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-03 17:41
///
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

export 'package:provider/provider.dart';
export 'package:weather/providers/weather_provider.dart';

ChangeNotifierProvider<T> buildProvider<T extends ChangeNotifier>(T value) {
  return ChangeNotifierProvider<T>.value(value: value);
}

List<SingleChildWidget> get providers => _providers;

final _providers = [];

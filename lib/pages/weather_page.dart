///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-01 23:35
///
import 'package:flutter/material.dart';

import 'package:weather/constants/constants.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  Widget get topBar => SizedBox(
        height: 40.0,
        child: Center(
          child: Text(
            "上海",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: "Lexend Exa",
            ),
          ),
        ),
      );

  Widget get status => SizedBox(
        height: 40.0,
        child: Center(
          child: Text(
            "晴",
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontWeight: FontWeight.normal,
              fontSize: 12.0,
            ),
          ),
        ),
      );

  Widget get temperature => SizedBox.fromSize(
        size: Size.square(Screens.width / 3.5),
        child: Row(
          children: <Widget>[
            Spacer(),
            Text(
              "7",
              style: TextStyle(
                color: Colors.white,
                fontSize: 72.0,
                fontFamily: "Lexend Exa",
              ),
            ),
            Expanded(
              child: Text(
                "°",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 66.0,
                  fontFamily: "Lexend Exa",
                ),
              ),
            ),
          ],
        ),
      );

  Widget get airCondition => SizedBox(
        height: 50.0,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Screens.width),
              color: Colors.white10,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 6.0,
              horizontal: 16.0,
            ),
            child: Text(
              "空气优",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 12.0,
              ),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    API
        .fetch(
      FetchType.get,
      API.weather,
      data: API.weatherRequestQuery(
        province: "上海",
        city: "上海",
      ),
    )
        .then((response) {
      debugPrint(response.toString());
    });
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          Container(
            color: Color.fromRGBO(6, 19, 35, 1.0),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                topBar,
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      status,
                      temperature,
                      airCondition,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

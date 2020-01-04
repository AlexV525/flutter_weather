// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beans.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AirAdapter extends TypeAdapter<Air> {
  @override
  Air read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Air(
      aqi: fields[0] as int,
      aqiLevel: fields[1] as int,
      aqiName: fields[2] as String,
      co: fields[3] as String,
      no2: fields[4] as String,
      o3: fields[5] as String,
      pm10: fields[6] as String,
      pm25: fields[7] as String,
      so2: fields[8] as String,
      updateTime: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Air obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.aqi)
      ..writeByte(1)
      ..write(obj.aqiLevel)
      ..writeByte(2)
      ..write(obj.aqiName)
      ..writeByte(3)
      ..write(obj.co)
      ..writeByte(4)
      ..write(obj.no2)
      ..writeByte(5)
      ..write(obj.o3)
      ..writeByte(6)
      ..write(obj.pm10)
      ..writeByte(7)
      ..write(obj.pm25)
      ..writeByte(8)
      ..write(obj.so2)
      ..writeByte(9)
      ..write(obj.updateTime);
  }
}

class AlarmAdapter extends TypeAdapter<Alarm> {
  @override
  Alarm read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Alarm(
      city: fields[0] as String,
      county: fields[1] as String,
      detail: fields[2] as String,
      info: fields[3] as String,
      levelCode: fields[4] as String,
      levelName: fields[5] as String,
      province: fields[6] as String,
      typeCode: fields[7] as String,
      typeName: fields[8] as String,
      updateTime: fields[9] as String,
      url: fields[10] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Alarm obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.city)
      ..writeByte(1)
      ..write(obj.county)
      ..writeByte(2)
      ..write(obj.detail)
      ..writeByte(3)
      ..write(obj.info)
      ..writeByte(4)
      ..write(obj.levelCode)
      ..writeByte(5)
      ..write(obj.levelName)
      ..writeByte(6)
      ..write(obj.province)
      ..writeByte(7)
      ..write(obj.typeCode)
      ..writeByte(8)
      ..write(obj.typeName)
      ..writeByte(9)
      ..write(obj.updateTime)
      ..writeByte(10)
      ..write(obj.url);
  }
}

class ForecastPerHourAdapter extends TypeAdapter<ForecastPerHour> {
  @override
  ForecastPerHour read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ForecastPerHour(
      degree: fields[0] as int,
      updateTime: fields[1] as String,
      weather: fields[2] as String,
      weatherCode: fields[3] as String,
      weatherShort: fields[4] as String,
      windDirection: fields[5] as String,
      windPower: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ForecastPerHour obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.degree)
      ..writeByte(1)
      ..write(obj.updateTime)
      ..writeByte(2)
      ..write(obj.weather)
      ..writeByte(3)
      ..write(obj.weatherCode)
      ..writeByte(4)
      ..write(obj.weatherShort)
      ..writeByte(5)
      ..write(obj.windDirection)
      ..writeByte(6)
      ..write(obj.windPower);
  }
}

class ForecastPerDayAdapter extends TypeAdapter<ForecastPerDay> {
  @override
  ForecastPerDay read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ForecastPerDay(
      dayWeather: fields[0] as String,
      dayWeatherCode: fields[1] as String,
      dayWeatherShort: fields[2] as String,
      dayWindDirection: fields[3] as String,
      dayWindDirectionCode: fields[4] as String,
      dayWindPower: fields[5] as String,
      dayWindPowerCode: fields[6] as String,
      maxDegree: fields[7] as int,
      minDegree: fields[8] as int,
      nightWeather: fields[9] as String,
      nightWeatherCode: fields[10] as String,
      nightWeatherShort: fields[11] as String,
      nightWindDirection: fields[12] as String,
      nightWindDirectionCode: fields[13] as String,
      nightWindPower: fields[14] as String,
      nightWindPowerCode: fields[15] as String,
      time: fields[16] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ForecastPerDay obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.dayWeather)
      ..writeByte(1)
      ..write(obj.dayWeatherCode)
      ..writeByte(2)
      ..write(obj.dayWeatherShort)
      ..writeByte(3)
      ..write(obj.dayWindDirection)
      ..writeByte(4)
      ..write(obj.dayWindDirectionCode)
      ..writeByte(5)
      ..write(obj.dayWindPower)
      ..writeByte(6)
      ..write(obj.dayWindPowerCode)
      ..writeByte(7)
      ..write(obj.maxDegree)
      ..writeByte(8)
      ..write(obj.minDegree)
      ..writeByte(9)
      ..write(obj.nightWeather)
      ..writeByte(10)
      ..write(obj.nightWeatherCode)
      ..writeByte(11)
      ..write(obj.nightWeatherShort)
      ..writeByte(12)
      ..write(obj.nightWindDirection)
      ..writeByte(13)
      ..write(obj.nightWindDirectionCode)
      ..writeByte(14)
      ..write(obj.nightWindPower)
      ..writeByte(15)
      ..write(obj.nightWindPowerCode)
      ..writeByte(16)
      ..write(obj.time);
  }
}

class FitnessAdapter extends TypeAdapter<Fitness> {
  @override
  Fitness read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Fitness(
      detail: fields[0] as String,
      info: fields[1] as String,
      name: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Fitness obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.detail)
      ..writeByte(1)
      ..write(obj.info)
      ..writeByte(2)
      ..write(obj.name);
  }
}

class FitnessIndexAdapter extends TypeAdapter<FitnessIndex> {
  @override
  FitnessIndex read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FitnessIndex(
      airConditioner: fields[0] as Fitness,
      allergy: fields[1] as Fitness,
      carWash: fields[2] as Fitness,
      chill: fields[3] as Fitness,
      clothes: fields[4] as Fitness,
      cold: fields[5] as Fitness,
      comfort: fields[6] as Fitness,
      diffusion: fields[7] as Fitness,
      dry: fields[8] as Fitness,
      drying: fields[9] as Fitness,
      fish: fields[10] as Fitness,
      heatstroke: fields[11] as Fitness,
      makeup: fields[12] as Fitness,
      mood: fields[13] as Fitness,
      morning: fields[14] as Fitness,
      sports: fields[15] as Fitness,
      sunglasses: fields[16] as Fitness,
      sunscreen: fields[17] as Fitness,
      tourism: fields[18] as Fitness,
      traffic: fields[19] as Fitness,
      ultraviolet: fields[20] as Fitness,
      umbrella: fields[21] as Fitness,
      time: fields[22] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FitnessIndex obj) {
    writer
      ..writeByte(23)
      ..writeByte(0)
      ..write(obj.airConditioner)
      ..writeByte(1)
      ..write(obj.allergy)
      ..writeByte(2)
      ..write(obj.carWash)
      ..writeByte(3)
      ..write(obj.chill)
      ..writeByte(4)
      ..write(obj.clothes)
      ..writeByte(5)
      ..write(obj.cold)
      ..writeByte(6)
      ..write(obj.comfort)
      ..writeByte(7)
      ..write(obj.diffusion)
      ..writeByte(8)
      ..write(obj.dry)
      ..writeByte(9)
      ..write(obj.drying)
      ..writeByte(10)
      ..write(obj.fish)
      ..writeByte(11)
      ..write(obj.heatstroke)
      ..writeByte(12)
      ..write(obj.makeup)
      ..writeByte(13)
      ..write(obj.mood)
      ..writeByte(14)
      ..write(obj.morning)
      ..writeByte(15)
      ..write(obj.sports)
      ..writeByte(16)
      ..write(obj.sunglasses)
      ..writeByte(17)
      ..write(obj.sunscreen)
      ..writeByte(18)
      ..write(obj.tourism)
      ..writeByte(19)
      ..write(obj.traffic)
      ..writeByte(20)
      ..write(obj.ultraviolet)
      ..writeByte(21)
      ..write(obj.umbrella)
      ..writeByte(22)
      ..write(obj.time);
  }
}

class LimitAdapter extends TypeAdapter<Limit> {
  @override
  Limit read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Limit(
      tailNumber: fields[0] as String,
      time: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Limit obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.tailNumber)
      ..writeByte(1)
      ..write(obj.time);
  }
}

class ObserveAdapter extends TypeAdapter<Observe> {
  @override
  Observe read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Observe(
      degree: fields[0] as String,
      humidity: fields[1] as String,
      precipitation: fields[2] as String,
      pressure: fields[3] as String,
      updateTime: fields[4] as String,
      weather: fields[5] as String,
      weatherCode: fields[6] as String,
      weatherShort: fields[7] as String,
      windDirection: fields[8] as String,
      windPower: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Observe obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.degree)
      ..writeByte(1)
      ..write(obj.humidity)
      ..writeByte(2)
      ..write(obj.precipitation)
      ..writeByte(3)
      ..write(obj.pressure)
      ..writeByte(4)
      ..write(obj.updateTime)
      ..writeByte(5)
      ..write(obj.weather)
      ..writeByte(6)
      ..write(obj.weatherCode)
      ..writeByte(7)
      ..write(obj.weatherShort)
      ..writeByte(8)
      ..write(obj.windDirection)
      ..writeByte(9)
      ..write(obj.windPower);
  }
}

class RiseAdapter extends TypeAdapter<Rise> {
  @override
  Rise read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Rise(
      sunrise: fields[0] as String,
      sunset: fields[1] as String,
      time: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Rise obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.sunrise)
      ..writeByte(1)
      ..write(obj.sunset)
      ..writeByte(2)
      ..write(obj.time);
  }
}

///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-01 20:30
///
part of '../constants/beans.dart';

@HiveType()
class FitnessIndex extends HiveObject {
  @HiveField(0)
  Fitness airConditioner;
  @HiveField(1)
  Fitness allergy;
  @HiveField(2)
  Fitness carWash;
  @HiveField(3)
  Fitness chill;
  @HiveField(4)
  Fitness clothes;
  @HiveField(5)
  Fitness cold;
  @HiveField(6)
  Fitness comfort;
  @HiveField(7)
  Fitness diffusion;
  @HiveField(8)
  Fitness dry;
  @HiveField(9)
  Fitness drying;
  @HiveField(10)
  Fitness fish;
  @HiveField(11)
  Fitness heatstroke;
  @HiveField(12)
  Fitness makeup;
  @HiveField(13)
  Fitness mood;
  @HiveField(14)
  Fitness morning;
  @HiveField(15)
  Fitness sports;
  @HiveField(16)
  Fitness sunglasses;
  @HiveField(17)
  Fitness sunscreen;
  @HiveField(18)
  Fitness tourism;
  @HiveField(19)
  Fitness traffic;
  @HiveField(20)
  Fitness ultraviolet;
  @HiveField(21)
  Fitness umbrella;
  @HiveField(22)
  String time;

  FitnessIndex({
    this.airConditioner,
    this.allergy,
    this.carWash,
    this.chill,
    this.clothes,
    this.cold,
    this.comfort,
    this.diffusion,
    this.dry,
    this.drying,
    this.fish,
    this.heatstroke,
    this.makeup,
    this.mood,
    this.morning,
    this.sports,
    this.sunglasses,
    this.sunscreen,
    this.tourism,
    this.traffic,
    this.ultraviolet,
    this.umbrella,
    this.time,
  });

  FitnessIndex.fromJson(Map<String, dynamic> json) {
    airConditioner = json['airconditioner'] != null
        ? Fitness.fromJson(json['airconditioner'])
        : null;
    allergy =
        json['allergy'] != null ? Fitness.fromJson(json['allergy']) : null;
    carWash =
        json['carwash'] != null ? Fitness.fromJson(json['carwash']) : null;
    chill = json['chill'] != null ? Fitness.fromJson(json['chill']) : null;
    clothes =
        json['clothes'] != null ? Fitness.fromJson(json['clothes']) : null;
    cold = json['cold'] != null ? Fitness.fromJson(json['cold']) : null;
    comfort =
        json['comfort'] != null ? Fitness.fromJson(json['comfort']) : null;
    diffusion =
        json['diffusion'] != null ? Fitness.fromJson(json['diffusion']) : null;
    dry = json['dry'] != null ? Fitness.fromJson(json['dry']) : null;
    drying = json['drying'] != null ? Fitness.fromJson(json['drying']) : null;
    fish = json['fish'] != null ? Fitness.fromJson(json['fish']) : null;
    heatstroke = json['heatstroke'] != null
        ? Fitness.fromJson(json['heatstroke'])
        : null;
    makeup = json['makeup'] != null ? Fitness.fromJson(json['makeup']) : null;
    mood = json['mood'] != null ? Fitness.fromJson(json['mood']) : null;
    morning =
        json['morning'] != null ? Fitness.fromJson(json['morning']) : null;
    sports = json['sports'] != null ? Fitness.fromJson(json['sports']) : null;
    sunglasses = json['sunglasses'] != null
        ? Fitness.fromJson(json['sunglasses'])
        : null;
    sunscreen =
        json['sunscreen'] != null ? Fitness.fromJson(json['sunscreen']) : null;
    tourism =
        json['tourism'] != null ? Fitness.fromJson(json['tourism']) : null;
    traffic =
        json['traffic'] != null ? Fitness.fromJson(json['traffic']) : null;
    ultraviolet = json['ultraviolet'] != null
        ? Fitness.fromJson(json['ultraviolet'])
        : null;
    umbrella =
        json['umbrella'] != null ? Fitness.fromJson(json['umbrella']) : null;
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (this.airConditioner != null) {
      data['airconditioner'] = this.airConditioner.toJson();
    }
    if (this.allergy != null) {
      data['allergy'] = this.allergy.toJson();
    }
    if (this.carWash != null) {
      data['carwash'] = this.carWash.toJson();
    }
    if (this.chill != null) {
      data['chill'] = this.chill.toJson();
    }
    if (this.clothes != null) {
      data['clothes'] = this.clothes.toJson();
    }
    if (this.cold != null) {
      data['cold'] = this.cold.toJson();
    }
    if (this.comfort != null) {
      data['comfort'] = this.comfort.toJson();
    }
    if (this.diffusion != null) {
      data['diffusion'] = this.diffusion.toJson();
    }
    if (this.dry != null) {
      data['dry'] = this.dry.toJson();
    }
    if (this.drying != null) {
      data['drying'] = this.drying.toJson();
    }
    if (this.fish != null) {
      data['fish'] = this.fish.toJson();
    }
    if (this.heatstroke != null) {
      data['heatstroke'] = this.heatstroke.toJson();
    }
    if (this.makeup != null) {
      data['makeup'] = this.makeup.toJson();
    }
    if (this.mood != null) {
      data['mood'] = this.mood.toJson();
    }
    if (this.morning != null) {
      data['morning'] = this.morning.toJson();
    }
    if (this.sports != null) {
      data['sports'] = this.sports.toJson();
    }
    if (this.sunglasses != null) {
      data['sunglasses'] = this.sunglasses.toJson();
    }
    if (this.sunscreen != null) {
      data['sunscreen'] = this.sunscreen.toJson();
    }
    if (this.tourism != null) {
      data['tourism'] = this.tourism.toJson();
    }
    if (this.traffic != null) {
      data['traffic'] = this.traffic.toJson();
    }
    if (this.ultraviolet != null) {
      data['ultraviolet'] = this.ultraviolet.toJson();
    }
    if (this.umbrella != null) {
      data['umbrella'] = this.umbrella.toJson();
    }
    data['time'] = this.time;
    return data;
  }
}

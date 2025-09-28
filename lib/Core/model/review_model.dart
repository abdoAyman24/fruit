

import 'package:fruit_hup/Core/entity/review_entity.dart';

class ReviewModel {
  final String name;
  final String image;
  final num rate;
  final num date;
  final String descreption;

  ReviewModel({
    required this.name,
    required this.image,
    required this.rate,
    required this.date,
    required this.descreption,
  });

  factory ReviewModel.formEntity(ReviewEntity reviewEntity) {
    return ReviewModel(
      name: reviewEntity.name,
      image: reviewEntity.image,
      rate: reviewEntity.rate,
      date: reviewEntity.date,
      descreption: reviewEntity.descreption,
    );
  }

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      name: json['name'],
      image: json['image'],
      rate: json['rate'],
      date: json['date'],
      descreption: json['descreption'],
    );
  }
  toJson() {
    return {
      'name': name,
      'image': image,
      'rate': rate,
      'date': date,
      'descreption': descreption,
    };
  }
}

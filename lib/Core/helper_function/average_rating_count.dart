import 'package:fruit_hup/Core/model/review_model.dart';

averageRatingcount(List<ReviewModel> reviews) {
  if (reviews.isEmpty) {
    return 0;
  } else {
    num total = 0;
    for (var review in reviews) {
      total += review.rate;
    }
    return total / reviews.length;
  }
}

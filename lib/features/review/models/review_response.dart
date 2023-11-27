import 'package:json_annotation/json_annotation.dart';
import 'package:kaimovies/features/review/models/review.dart';

part 'review_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ReviewResponse {
  ReviewResponse(this.page, this.reviews);

  static const fromJsonFactory = _$ReviewResponseFromJson;

  final int page;
  @JsonKey(name: 'results')
  final List<Review> reviews;
}

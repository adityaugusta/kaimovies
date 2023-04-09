import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  const factory Review({
    required AuthorDetail authorDetails,
    required String content,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) =>
      _$ReviewFromJson(json);

  static const fromJsonFactory = _$ReviewFromJson;
}

@freezed
class AuthorDetail with _$AuthorDetail {
  const factory AuthorDetail({
    required String name,
    String? avatarPath,
    @Default(0) double rating,
  }) = _AuthorDetail;

  factory AuthorDetail.fromJson(Map<String, dynamic> json) =>
      _$AuthorDetailFromJson(json);

  static const fromJsonFactory = _$AuthorDetailFromJson;
}
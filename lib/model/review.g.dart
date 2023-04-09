// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      authorDetails:
          AuthorDetail.fromJson(json['author_details'] as Map<String, dynamic>),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'author_details': instance.authorDetails.toJson(),
      'content': instance.content,
    };

_$_AuthorDetail _$$_AuthorDetailFromJson(Map<String, dynamic> json) =>
    _$_AuthorDetail(
      name: json['name'] as String,
      avatarPath: json['avatar_path'] as String?,
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_AuthorDetailToJson(_$_AuthorDetail instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('avatar_path', instance.avatarPath);
  val['rating'] = instance.rating;
  return val;
}

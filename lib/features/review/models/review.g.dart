// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      authorDetails:
          AuthorDetail.fromJson(json['author_details'] as Map<String, dynamic>),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'author_details': instance.authorDetails.toJson(),
      'content': instance.content,
    };

_$AuthorDetailImpl _$$AuthorDetailImplFromJson(Map<String, dynamic> json) =>
    _$AuthorDetailImpl(
      name: json['name'] as String,
      avatarPath: json['avatar_path'] as String?,
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$AuthorDetailImplToJson(_$AuthorDetailImpl instance) {
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

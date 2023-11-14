// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'naver_book_search_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NaverBookSearchOption _$NaverBookSearchOptionFromJson(
        Map<String, dynamic> json) =>
    NaverBookSearchOption(
      sort: $enumDecodeNullable(_$NaverBookSearchTypeEnumMap, json['sort']),
      start: json['start'] as int?,
      display: json['display'] as int?,
      query: json['query'] as String?,
    );

Map<String, dynamic> _$NaverBookSearchOptionToJson(
        NaverBookSearchOption instance) =>
    <String, dynamic>{
      'query': instance.query,
      'display': instance.display,
      'start': instance.start,
      'sort': _$NaverBookSearchTypeEnumMap[instance.sort],
    };

const _$NaverBookSearchTypeEnumMap = {
  NaverBookSearchType.date: 'date',
  NaverBookSearchType.sim: 'sim',
};

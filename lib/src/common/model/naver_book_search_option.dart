import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'naver_book_search_option.g.dart';

@JsonSerializable()
class NaverBookSearchOption extends Equatable {
  final String? query;
  final int? display;
  final int? start;
  final NaverBookSearchType? sort;

  const NaverBookSearchOption.init({
    required String query
  }) : this (
    query: query,
    display: 10,
    start: 1,
    sort: NaverBookSearchType.date
  );

  const NaverBookSearchOption ({
    this.sort,
    this.start,
    this.display,
    this.query,
  });

  Map<String, dynamic> toMap() => _$NaverBookSearchOptionToJson(this);

  @override
  List<Object?> get props => [
    sort,
    start,
    display,
    query
  ];
}

enum NaverBookSearchType {
  date('출간일순', 'date'),
  sim('정확도순', 'sim');

  const NaverBookSearchType (this.name, this.value);

  final String name;
  final String value;
}
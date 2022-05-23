// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:netflix/services/api.dart';

class Movie {
  final int id;
  final String name;
  final String description;
  final String? posterPath;
  Movie({
    required this.id,
    required this.name,
    required this.description,
    this.posterPath,
  });

  Movie copyWith({
    int? id,
    String? name,
    String? description,
    String? posterPath,
  }) {
    return Movie(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      posterPath: posterPath ?? this.posterPath,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'description': description});
    if (posterPath != null) {
      result.addAll({'posterPath': posterPath});
    }

    return result;
  }

  factory Movie.fromJson(Map<String, dynamic> map) {
    return Movie(
      id: map['id']?.toInt() ?? 0,
      name: map['title'] ?? '',
      description: map['overview'] ?? '',
      posterPath: map['poster_path'],
    );
  }

  String posterUrl() {
    Api api = Api();
    return api.baseImageUrl + posterPath!;
  }
}

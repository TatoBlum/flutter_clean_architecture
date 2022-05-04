// To parse this JSON data, do
//
//     final books = booksFromJson(jsonString);

import 'dart:convert';

List<Book> booksFromJson(String str) =>
    // ignore: avoid_dynamic_calls
    List<Book>.from(json.decode(str).map((x) => Book.fromJson(x as Map<String, dynamic>))as Iterable<dynamic>);

String booksToJson(List<Book> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Book {
  Book({
    this.id,
    this.image,
    this.title,
    this.author,
    this.year,
    this.status,
    this.genre,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? image;
  String? title;
  String? author;
  String? year;
  String? status;
  String? genre;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json["id"] as int,
        image: json["image"] as String,
        title: json["title"] as String,
        author: json["author"] as String,
        year: json["year"] as String ,
        status: json["status"] as String,
        genre: json["genre"] as String,
        createdAt: DateTime.parse(json["created_at"] as String) ,
        updatedAt: DateTime.parse(json["updated_at"] as String),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "title": title,
        "author": author,
        "year": year,
        "status": status,
        "genre": genre,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };

  Book copyWith({
    int? id,
    String? image,
    String? title,
    String? author,
    String? year,
    String? status,
    String? genre,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Book(
        id: id ?? this.id,
        image: image ?? this.image,
        title: title ?? this.title,
      );
}

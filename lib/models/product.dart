// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types
import 'dart:convert';

import 'package:flutter/foundation.dart';

class subject {
  final String name;
  final String description;
  final String place;
  final List<String> images;
  final String className;
  final String? id;
  final double price;
  subject({
    required this.name,
    required this.description,
    required this.place,
    required this.images,
    required this.className,
    required this.id,
    required this.price,
  });

  subject copyWith({
    String? name,
    String? description,
    String? place,
    List<String>? images,
    String? className,
    String? id,
    double? price,
  }) {
    return subject(
      name: name ?? this.name,
      description: description ?? this.description,
      place: place ?? this.place,
      images: images ?? this.images,
      className: className ?? this.className,
      id: id ?? this.id,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'place': place,
      'images': images,
      'className': className,
      'id': id,
      'price': price,
    };
  }

  String toJson() => json.encode(toMap());

  factory subject.fromJson(String source) =>
      subject.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'subject(name: $name, description: $description, place: $place, images: $images, className: $className, id: $id, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is subject &&
        other.name == name &&
        other.description == description &&
        other.place == place &&
        listEquals(other.images, images) &&
        other.className == className &&
        other.id == id &&
        other.price == price;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        description.hashCode ^
        place.hashCode ^
        images.hashCode ^
        className.hashCode ^
        id.hashCode ^
        price.hashCode;
  }

  static fromMap(Map<String, dynamic> decode) {}
}

import 'dart:convert';

import 'package:collection/collection.dart';

class Heloo {
  final String? token;
  final String? id;
  final String? name;
  final String? email;
  final String? password;
  final String? address;
  final String? type;
  final List<dynamic>? cart;
  final int? v;

  const Heloo({
    this.token,
    this.id,
    this.name,
    this.email,
    this.password,
    this.address,
    this.type,
    this.cart,
    this.v,
  });

  @override
  String toString() {
    return 'Heloo(token: $token, id: $id, name: $name, email: $email, password: $password, address: $address, type: $type, cart: $cart, v: $v)';
  }

  factory Heloo.fromMap(Map<String, dynamic> data) => Heloo(
        token: data['token'] as String?,
        id: data['_id'] as String?,
        name: data['name'] as String?,
        email: data['email'] as String?,
        password: data['password'] as String?,
        address: data['address'] as String?,
        type: data['type'] as String?,
        cart: data['cart'] as List<dynamic>?,
        v: data['__v'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'token': token,
        '_id': id,
        'name': name,
        'email': email,
        'password': password,
        'address': address,
        'type': type,
        'cart': cart,
        '__v': v,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Heloo].
  factory Heloo.fromJson(String data) {
    return Heloo.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Heloo] to a JSON string.
  String toJson() => json.encode(toMap());

  Heloo copyWith({
    String? token,
    String? id,
    String? name,
    String? email,
    String? password,
    String? address,
    String? type,
    List<dynamic>? cart,
    int? v,
  }) {
    return Heloo(
      token: token ?? this.token,
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      address: address ?? this.address,
      type: type ?? this.type,
      cart: cart ?? this.cart,
      v: v ?? this.v,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Heloo) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      token.hashCode ^
      id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      password.hashCode ^
      address.hashCode ^
      type.hashCode ^
      cart.hashCode ^
      v.hashCode;
}

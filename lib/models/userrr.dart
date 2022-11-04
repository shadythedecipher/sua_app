import 'dart:convert';

import 'package:collection/collection.dart';

class Userrr {
  final String? token;
  final String? id;
  final String? name;
  final String? email;
  final String? password;
  final String? address;
  final String? type;
  final List<dynamic>? cart;
  final int? v;

  const Userrr({
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
    return 'Userrr(token: $token, id: $id, name: $name, email: $email, password: $password, address: $address, type: $type, cart: $cart, v: $v)';
  }

  factory Userrr.fromMap(Map<String, dynamic> data) => Userrr(
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
  /// Parses the string and returns the resulting Json object as [Userrr].
  factory Userrr.fromJson(String data) {
    return Userrr.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Userrr] to a JSON string.
  String toJson() => json.encode(toMap());

  Userrr copyWith({
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
    return Userrr(
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
    if (other is! Userrr) return false;
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

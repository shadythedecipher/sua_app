import 'dart:convert';

import 'package:collection/collection.dart';

class AttendanceClass {
  String? name;
  String? classname;
  String? subjectname;
  String? statusOfAttendance;

  AttendanceClass({
    this.name,
    this.classname,
    this.subjectname,
    this.statusOfAttendance,
  });

  @override
  String toString() {
    return 'AttendanceClass(name: $name, classname: $classname, subjectname: $subjectname, statusOfAttendance: $statusOfAttendance)';
  }

  factory AttendanceClass.fromMap(Map<String, dynamic> data) {
    return AttendanceClass(
      name: data['name'] as String?,
      classname: data['Classname'] as String?,
      subjectname: data['Subjectname'] as String?,
      statusOfAttendance: data['StatusOFAttendance'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'name': name,
        'Classname': classname,
        'Subjectname': subjectname,
        'StatusOFAttendance': statusOfAttendance,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [AttendanceClass].
  factory AttendanceClass.fromJson(String data) {
    return AttendanceClass.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [AttendanceClass] to a JSON string.
  String toJson() => json.encode(toMap());

  AttendanceClass copyWith({
    String? name,
    String? classname,
    String? subjectname,
    String? statusOfAttendance,
  }) {
    return AttendanceClass(
      name: name ?? this.name,
      classname: classname ?? this.classname,
      subjectname: subjectname ?? this.subjectname,
      statusOfAttendance: statusOfAttendance ?? this.statusOfAttendance,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! AttendanceClass) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      name.hashCode ^
      classname.hashCode ^
      subjectname.hashCode ^
      statusOfAttendance.hashCode;
}

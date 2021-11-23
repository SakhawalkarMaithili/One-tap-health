import 'dart:convert';

class Reminder {
  late int id;
  late String person;
  late DateTime dateTime;
  late String info;
  Reminder({
    required this.id,
    required this.person,
    required this.dateTime,
    required this.info,
  });

  Reminder copyWith({
    int? id,
    String? person,
    DateTime? dateTime,
    String? info,
  }) {
    return Reminder(
      id: id ?? this.id,
      person: person ?? this.person,
      dateTime: dateTime ?? this.dateTime,
      info: info ?? this.info,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'person': person,
      'dateTime': dateTime,
      'info': info,
    };
  }

  factory Reminder.fromMap(Map<String, dynamic> map) {
    return Reminder(
      id: map['id'],
      person: map['person'],
      dateTime: map['dateTime'],
      info: map['info'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Reminder.fromJson(String source) =>
      Reminder.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Reminder(id: $id, person: $person, dateTime: $dateTime, info: $info)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Reminder &&
        other.id == id &&
        other.person == person &&
        other.dateTime == dateTime &&
        other.info == info;
  }

  @override
  int get hashCode {
    return id.hashCode ^ person.hashCode ^ dateTime.hashCode ^ info.hashCode;
  }
}

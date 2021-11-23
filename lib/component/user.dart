import 'dart:convert';

class User {
  late String user_password;
  late String user_email;
  late String name;
  late int age;
  late int weight;
  late String doctor;
  late String emergency;
  User({
    required this.user_password,
    required this.user_email,
    required this.name,
    required this.age,
    required this.weight,
    required this.doctor,
    required this.emergency,
  });

  User copyWith({
    String? user_password,
    String? user_email,
    String? name,
    int? age,
    int? weight,
    String? doctor,
    String? emergency,
  }) {
    return User(
      user_password: user_password ?? this.user_password,
      user_email: user_email ?? this.user_email,
      name: name ?? this.name,
      age: age ?? this.age,
      weight: weight ?? this.weight,
      doctor: doctor ?? this.doctor,
      emergency: emergency ?? this.emergency,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'user_password': user_password,
      'user_email': user_email,
      'name': name,
      'age': age,
      'weight': weight,
      'doctor': doctor,
      'emergency': emergency,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      user_password: map['user_password'],
      user_email: map['user_email'],
      name: map['name'],
      age: map['age'],
      weight: map['weight'],
      doctor: map['doctor'],
      emergency: map['emergency'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(user_password: $user_password, user_email: $user_email, name: $name, age: $age, weight: $weight, doctor: $doctor, emergency: $emergency)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.user_password == user_password &&
        other.user_email == user_email &&
        other.name == name &&
        other.age == age &&
        other.weight == weight &&
        other.doctor == doctor &&
        other.emergency == emergency;
  }

  @override
  int get hashCode {
    return user_password.hashCode ^
        user_email.hashCode ^
        name.hashCode ^
        age.hashCode ^
        weight.hashCode ^
        doctor.hashCode ^
        emergency.hashCode;
  }
}

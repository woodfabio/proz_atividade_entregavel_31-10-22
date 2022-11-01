import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:flutter_app/src/get_sentences/models/wand.dart';

class Character {

  final String? name;
  final List<String>? alternate_names;
  final String? species;
  final String? gender;
  final String? house;
  final String? dateOfBirth;
  final int? yearOfBirth;
  final bool? wizard;
  final String? ancestry;
  final String? eyeColour;
  final String? hairColour;
  final Wand? wand;
  final String? patronus;
  final bool? hogwartsStudent;
  final bool? hogwartsStaff;
  final String? actor;
  final List<String>? alternate_actors;
  final bool? alive;
  final String? image;

  Character({
    this.name,
    this.alternate_names,
    this.species,
    this.gender,
    this.house,
    this.dateOfBirth,
    this.yearOfBirth,
    this.wizard,
    this.ancestry,
    this.eyeColour,
    this.hairColour,
    this.wand,
    this.patronus,
    this.hogwartsStudent,
    this.hogwartsStaff,
    this.actor,
    this.alternate_actors,
    this.alive,
    this.image,
});
  

  Character copyWith({
    String? name,
    List<String>? alternate_names,
    String? species,
    String? gender,
    String? house,
    String? dateOfBirth,
    int? yearOfBirth,
    bool? wizard,
    String? ancestry,
    String? eyeColour,
    String? hairColour,
    Wand? wand,
    String? patronus,
    bool? hogwartsStudent,
    bool? hogwartsStaff,
    String? actor,
    List<String>? alternate_actors,
    bool? alive,
    String? image,
  }) {
    return Character(
      name: name ?? this.name,
      alternate_names: alternate_names ?? this.alternate_names,
      species: species ?? this.species,
      gender: gender ?? this.gender,
      house: house ?? this.house,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      yearOfBirth: yearOfBirth ?? this.yearOfBirth,
      wizard: wizard ?? this.wizard,
      ancestry: ancestry ?? this.ancestry,
      eyeColour: eyeColour ?? this.eyeColour,
      hairColour: hairColour ?? this.hairColour,
      wand: wand ?? this.wand,
      patronus: patronus ?? this.patronus,
      hogwartsStudent: hogwartsStudent ?? this.hogwartsStudent,
      hogwartsStaff: hogwartsStaff ?? this.hogwartsStaff,
      actor: actor ?? this.actor,
      alternate_actors: alternate_actors ?? this.alternate_actors,
      alive: alive ?? this.alive,
      image: image ?? this.image,
    );
  }
  
  factory Character.fromMap(Map<String, dynamic> map) {
    return Character(
      name: map['name'] != null ? map['name'] as String : null,
      alternate_names: map['alternate_names'] != null ? List<String>.from(map['alternate_names']) : [],
      species: map['species'] != null ? map['species'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      house: map['house'] != null ? map['house'] as String : null,
      dateOfBirth: map['dateOfBirth'] != null ? map['dateOfBirth'] as String : null,
      yearOfBirth: map['yearOfBirth'] != null ? map['yearOfBirth'] as int : null,
      wizard: map['wizard'] != null ? map['wizard'] as bool : null,
      ancestry: map['ancestry'] != null ? map['ancestry'] as String : null,
      eyeColour: map['eyeColour'] != null ? map['eyeColour'] as String : null,
      hairColour: map['hairColour'] != null ? map['hairColour'] as String : null,
      wand: map['wand'] != null ? Wand.fromMap(map['wand'] as Map<String,dynamic>) : null,
      patronus: map['patronus'] != null ? map['patronus'] as String : null,
      hogwartsStudent: map['hogwartsStudent'] != null ? map['hogwartsStudent'] as bool : null,
      hogwartsStaff: map['hogwartsStaff'] != null ? map['hogwartsStaff'] as bool : null,
      actor: map['actor'] != null ? map['actor'] as String : null,
      alternate_actors: map['alternate_actors'] != null ? List<String>.from(map['alternate_actors']) : [],
      alive: map['alive'] != null ? map['alive'] as bool : null,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }
  
  @override
  String toString() {
    return 'Character(name: $name, alternate_names: $alternate_names, species: $species, gender: $gender, house: $house, dateOfBirth: $dateOfBirth, yearOfBirth: $yearOfBirth, wizard: $wizard, ancestry: $ancestry, eyeColour: $eyeColour, hairColour: $hairColour, wand: $wand, patronus: $patronus, hogwartsStudent: $hogwartsStudent, hogwartsStaff: $hogwartsStaff, actor: $actor, alternate_actors: $alternate_actors, alive: $alive, image: $image)';
  }

  @override
  bool operator ==(covariant Character other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      listEquals(other.alternate_names, alternate_names) &&
      other.species == species &&
      other.gender == gender &&
      other.house == house &&
      other.dateOfBirth == dateOfBirth &&
      other.yearOfBirth == yearOfBirth &&
      other.wizard == wizard &&
      other.ancestry == ancestry &&
      other.eyeColour == eyeColour &&
      other.hairColour == hairColour &&
      other.wand == wand &&
      other.patronus == patronus &&
      other.hogwartsStudent == hogwartsStudent &&
      other.hogwartsStaff == hogwartsStaff &&
      other.actor == actor &&
      listEquals(other.alternate_actors, alternate_actors) &&
      other.alive == alive &&
      other.image == image;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      alternate_names.hashCode ^
      species.hashCode ^
      gender.hashCode ^
      house.hashCode ^
      dateOfBirth.hashCode ^
      yearOfBirth.hashCode ^
      wizard.hashCode ^
      ancestry.hashCode ^
      eyeColour.hashCode ^
      hairColour.hashCode ^
      wand.hashCode ^
      patronus.hashCode ^
      hogwartsStudent.hashCode ^
      hogwartsStaff.hashCode ^
      actor.hashCode ^
      alternate_actors.hashCode ^
      alive.hashCode ^
      image.hashCode;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'alternate_names': alternate_names,
      'species': species,
      'gender': gender,
      'house': house,
      'dateOfBirth': dateOfBirth,
      'yearOfBirth': yearOfBirth,
      'wizard': wizard,
      'ancestry': ancestry,
      'eyeColour': eyeColour,
      'hairColour': hairColour,
      'wand': wand?.toMap(),
      'patronus': patronus,
      'hogwartsStudent': hogwartsStudent,
      'hogwartsStaff': hogwartsStaff,
      'actor': actor,
      'alternate_actors': alternate_actors,
      'alive': alive,
      'image': image,
    };
  }

  String toJson() => json.encode(toMap());

  factory Character.fromJson(String source) => Character.fromMap(json.decode(source) as Map<String, dynamic>);
}

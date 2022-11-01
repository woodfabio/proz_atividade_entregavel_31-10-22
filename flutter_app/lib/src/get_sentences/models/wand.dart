import 'dart:convert';

class Wand {

  String? wood;
  String? core;
  dynamic? length;

  Wand({
    this.wood,
    this.core,
    this.length,
  });


  Wand copyWith({
    String? wood,
    String? core,
    dynamic? length,
  }) {
    return Wand(
      wood: wood ?? this.wood,
      core: core ?? this.core,
      length: length ?? this.length,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wood': wood,
      'core': core,
      'length': length,
    };
  }

  factory Wand.fromMap(Map<String, dynamic> map) {
    return Wand(
      wood: map['wood'] != null ? map['wood']: null,
      core: map['core'] != null ? map['core']: null,
      length: map['length'] != null ? map['length']: null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Wand.fromJson(String source) => Wand.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Wand(wood: $wood, core: $core, length: $length)';

  @override
  bool operator ==(covariant Wand other) {
    if (identical(this, other)) return true;
  
    return 
      other.wood == wood &&
      other.core == core &&
      other.length == length;
  }

  @override
  int get hashCode => wood.hashCode ^ core.hashCode ^ length.hashCode;
}

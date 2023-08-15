class Contact {
  String? id;
  String name;
  String number;
  Contact({
    this.id,
    required this.name,
    required this.number,
  });

  factory Contact.empty() => Contact(
        id: '',
        name: '',
        number: '',
      );

  @override
  String toString() => 'Contact(id: $id, name: $name, number: $number)';

  Contact copyWith({
    String? id,
    String? name,
    String? number,
  }) {
    return Contact(
      id: id ?? this.id,
      name: name ?? this.name,
      number: number ?? this.number,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'number': number,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] as String,
      number: map['number'] as String,
    );
  }

  @override
  bool operator ==(covariant Contact other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.number == number;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ number.hashCode;
}

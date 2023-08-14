// ignore_for_file: public_member_api_docs, sort_constructors_first

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
  String toString() => 'Contact(name: $name, number: $number)';
}

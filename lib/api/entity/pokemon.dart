class Pokemon {
  final String id;
  final String name;
  final String number;
  final String image;
  final String? classification;
  final List<String?>? types;

  Pokemon({
    required this.id,
    required this.name,
    required this.number,
    required this.image,
    this.classification,
    this.types
  });
}
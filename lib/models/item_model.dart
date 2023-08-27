class ItemModel {
  final String sound;
  final String? image;
  final String enName;
  final String jpName;

  const ItemModel({
    required this.jpName,
    required this.enName,
    this.image,
    required this.sound,
  });
}

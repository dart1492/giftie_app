class GiftCard {
  /// Name of the service, company (like Netflix, PlayStation, etc. )
  String name;

  /// Path to te image in assets foled
  /// (later can be replaced with UintList for byte representation of the image)
  String assetImagePath;

  /// available prices of this particular gift card - 50, 100, 250, etc.
  List<int> priceList;

  /// Shortdescription of this giftcard
  String description;

  GiftCard({
    required this.name,
    required this.assetImagePath,
    required this.priceList,
    required this.description,
  });
}

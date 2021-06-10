class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
}

class CatalogModel {
  static final products = [
    Item(
      id: 1,
      name: "sample product name",
      desc: "sample product description so far so.",
      price: 999,
      color: "#33505a",
      image:
          "https://yodafiles.s3-ap-southeast-1.amazonaws.com/uploads/profile_images/thumbs/20190324_181434_5c9774f698ea8.jpg",
    )
  ];
}

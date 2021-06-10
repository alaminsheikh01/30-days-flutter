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

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}

class CatalogModel {
  static List<Item> products = [
    Item(
      id: 1,
      name: "sample product name",
      desc: "sample product description so far so.",
      price: 999,
      color: "#33505a",
      image:
          "https://res.cloudinary.com/practicaldev/image/fetch/s--5i-4I-y2--/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/578716/27c38a32-f441-4e19-a792-d105e981f99a.png",
    )
  ];
}

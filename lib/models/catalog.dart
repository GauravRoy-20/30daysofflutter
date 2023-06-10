class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(map["id"], map["name"], map["desc"], map["price"], map["color"],
        map["image"]);
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
  static late List<Item> items;

  // get item by id
  Item getById(int id) => items.firstWhere(
        (element) => element.id == id,
      );
  // get item by position
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}

class CatalogModel {
  static final items = [
    Item(
        1,
        "apple iphone 14",
        "The iPhone 14 features a 6.1-inch (155 mm) display with Super Retina XDR OLED technology at a resolution of 2532 × 1170 pixels and a pixel density of about 460 PPI with a refresh rate of 60 Hz.",
        70000,
        "blue",
        "https://cdn.vox-cdn.com/thumbor/bkgKJog208mfyZ-cfktFe20AiDA=/0x0:2880x1620/1400x1400/filters:focal(1440x810:1441x811)/cdn.vox-cdn.com/uploads/chorus_asset/file/24002854/Apple_iPhone_14_iPhone_14_Plus_hero_220907_Full_Bleed_Image.jpg.large_2x.jpg")
  ];
}

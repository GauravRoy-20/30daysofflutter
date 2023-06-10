import 'package:velocity_x/velocity_x.dart';
import 'package:learn_flutter/models/catalog.dart';
import '../models/cart.dart';

class MyStore extends VxStore {
  CatalogModel? catalog;
  CartModel? cart;
  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart!.catalog = catalog!;
  }
}

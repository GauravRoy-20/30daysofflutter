import 'package:flutter/material.dart';
import 'package:learn_flutter/models/catalog.dart';

import '../widgets/mydrawer.dart';
import '../widgets/product_item.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Gaurav";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ProductItem(
            item: CatalogModel.items[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}

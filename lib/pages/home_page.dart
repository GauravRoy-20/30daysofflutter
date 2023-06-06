import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_flutter/models/catalog.dart';
import '../widgets/mydrawer.dart';
import '../widgets/product_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Gaurav";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final jsonData = await rootBundle.loadString("assets/files/catalog.json");
    final jsonDataDecode = jsonDecode(jsonData);
    var productsData = jsonDataDecode["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  return ProductItem(
                    item: CatalogModel.items[index],
                  );
                },
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: const MyDrawer(),
    );
  }
}

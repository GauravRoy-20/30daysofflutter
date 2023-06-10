import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/core/store.dart';
import 'package:learn_flutter/models/cart.dart';
import 'package:learn_flutter/models/catalog.dart';
import 'package:learn_flutter/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = "https://api.npoint.io/a5b8f8a41fef3ab9b6aa";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    // final jsonData = await rootBundle.loadString("assets/files/catalog.json");
    final response = await http.get(Uri.parse(url));
    final jsonData = response.body;
    final jsonDataDecode = jsonDecode(jsonData);
    var productsData = jsonDataDecode["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        builder: (context, object, status) {
          return FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.cartRoute);
            },
            backgroundColor:
                context.theme.floatingActionButtonTheme.backgroundColor,
            foregroundColor:
                context.theme.floatingActionButtonTheme.foregroundColor,
            child: const Icon(CupertinoIcons.cart),
          ).badge(color: Vx.red500, size: 20, count: cart!.items.length);
        },
        mutations: const {AddMutation, RemoveMutation},
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CatalogHeader(),
              if (CatalogModel.items != null)
                const CatalogList().py16().expand()
              else
                const CircularProgressIndicator(
                  color: Colors.deepPurple,
                ).centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}

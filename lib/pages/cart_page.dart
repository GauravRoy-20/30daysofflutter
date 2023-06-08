import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamcolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.color(Colors.black).make(),
      ),
    );
  }
}

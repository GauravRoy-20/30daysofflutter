import 'package:flutter/material.dart';
import 'package:learn_flutter/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.color(context.textTheme.titleLarge?.color).make(),
      ),
      body: Column(
        children: [
          CartList().p32().expand(),
          // Placeholder().p32().expand(),
          const Divider(),
          const CartTotal(),
        ],
      ),
    );
  }
}

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});
  @override
  Widget build(BuildContext context) {
    final cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${cart.totalPrice}".text.xl6.color(context.accentColor).make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: "Buying not supported yet"
                      .text
                      .color(Colors.white)
                      .make(),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  context.theme.floatingActionButtonTheme.backgroundColor),
            ),
            child: "Buy".text.white.make(),
          ).w32(context),
        ],
      ),
    );
  }
}

// class CartList extends StatefulWidget {
//   const CartList({super.key});

//   @override
//   State<CartList> createState() => _CartListState();
// }

class CartList extends StatelessWidget {
  final _cart = CartModel();
  CartList({super.key});
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? "Cart is empty".text.xl3.color(context.accentColor).makeCentered()
        : ListView.builder(
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.done),
              trailing: IconButton(
                onPressed: () {
                  _cart.remove(_cart.items[index]);
                  // setState(() {});
                },
                icon: const Icon(Icons.remove_circle_outline),
              ),
              title: _cart.items[index].name.text
                  .color(context.accentColor)
                  .make(),
            ),
            itemCount: _cart.items.length,
          );
  }
}

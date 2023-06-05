import 'package:flutter/material.dart';
import 'package:learn_flutter/models/catalog.dart';

class ProductItem extends StatelessWidget {
  final Item item;

  const ProductItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading:
            SizedBox(height: 100, width: 100, child: Image.network(item.image)),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learn_flutter/models/catalog.dart';
import 'package:learn_flutter/pages/home_details_page.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog_item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items!.lastIndex,
      itemBuilder: ((context, index) {
        final catalog = CatalogModel.items![index];
        return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeDetailsPage(catalog: catalog),
                ),
              );
            },
            child: CatalogItem(catalog: catalog));
      }),
    );
  }
}

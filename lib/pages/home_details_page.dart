import "package:flutter/material.dart";
import "package:velocity_x/velocity_x.dart";
import "../models/catalog.dart";
import "../utils/routes.dart";

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailsPage({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.cartRoute);
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(context
                            .theme.floatingActionButtonTheme.backgroundColor),
                        shape: MaterialStateProperty.all(
                          const StadiumBorder(),
                        )),
                    child: "Buy".text.make())
                .wh(100, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.lg.color(context.accentColor).bold.make(),
                    catalog.desc.text.textStyle(context.captionStyle).make(),
                    10.heightBox,
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .px16()
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

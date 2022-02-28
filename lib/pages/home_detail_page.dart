// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/themes.dart';

class homeDetailsPage extends StatelessWidget {
  final Item catalog;

  const homeDetailsPage({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    MyTheme.darkBluishColor,
                  ),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  )),
              child: "Buy".text.make(),
            ).wh(100, 45),
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
            ).p32(),
            Expanded(
              child: VxArc(
                height: 20.0,
                arcType: VxArcType.CONVEX,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl3
                          .color(MyTheme.darkBluishColor)
                          .bold
                          .make(),
                      catalog.desc.text.xl.make(),
                      10.heightBox,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

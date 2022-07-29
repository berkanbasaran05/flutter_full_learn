import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/image_learn_view.dart';
import 'package:flutter_full_learn/product/images_items.dart';

class NftMarketPlacePush extends StatefulWidget {
  const NftMarketPlacePush({Key? key}) : super(key: key);

  @override
  State<NftMarketPlacePush> createState() => _NftMarketPlacePushState();
}

class _NftMarketPlacePushState extends State<NftMarketPlacePush> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Stack(
            children: [
              PngImage(name: ImageItems().okbear),
              IconButton(onPressed: () {}, icon: Icon(Icons.clear))
            ],
          )
        ]));
  }
}

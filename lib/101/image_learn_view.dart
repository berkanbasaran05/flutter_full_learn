import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        //Image.asset(ImageItems().dreamHouse,fit: BoxFit.cover,)
        PngImage(name: ImageItems().dreamHouse),
        SizedBox(
          child: PngImage(name: ImageItems().applebook),
          width: 200,
          height: 200,
        ),

        Image.network(
          "www",
          errorBuilder: (context, error, stackTrace) =>
              PngImage(name: ImageItems().errorPic),
        ),
      ]),
    );
  }
}

class ImageItems {
  final String dreamHouse = "Dream-House-Transparent";
  final String errorPic = "erroricon";
  final String applebook = "applebook";
  final String applebooktran = "applebooktransp";
  final String apartman = "apartment";
  final String sektorel = "sektorel";
  final String Solana = "solana";
  final String okbear = "okbear";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/images/$name.png';
}

import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  const ColorLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: ColorsItems.sulu,
        child: Text('data'),

        //ya da böyle de yapabiliriz.
        //Text('data'
        //style : Theme.Of(context).textTheme.subtitle1?.CopyWith(
        //color : Theme.of(context).errorColor) ),
      ),
    );
  }
}

class ColorsItems {
  static const Color porschase = Color(0xffEDBF61);

  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}

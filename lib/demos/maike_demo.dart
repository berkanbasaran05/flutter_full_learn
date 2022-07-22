import 'package:flutter/material.dart';

class MaikeNoteDemos extends StatelessWidget {
  const MaikeNoteDemos({Key? key}) : super(key: key);
  final tittle = 'I love this girl';
  final String appbarTittle = 'Love story';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTittle),
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
        padding: PaddingItems.horizantalPadding,
        child: Column(children: [
          Image.asset(
            "assets/images/maike.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 100,
            width: 100,
          ),
          Text(
            tittle,
            style: Theme.of(context).textTheme.headline3,
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text('The most beautiful woman in the world')),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 300,
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                            image:
                                new AssetImage("assets/images/maikeberkan.png"),
                            fit: BoxFit.fill)),
                  ));
        },
        child: Icon(Icons.heart_broken),
      ),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizantalPadding =
      EdgeInsets.symmetric(horizontal: 20);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}

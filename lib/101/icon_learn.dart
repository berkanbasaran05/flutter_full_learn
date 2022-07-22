import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);

  final IconSizes iconsize = IconSizes();
  final IconColors iconcolor = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Maike Schimmer(die Schönste Frau)',
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: ProjectColors.appbarColor),
      )),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.heart_broken_rounded,
                color: Theme.of(context).backgroundColor,
                size: IconSizes().iconSmall,
              )),
          SizedBox(height: 50),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.heart_broken,
                color: iconcolor.froly,
                size: iconsize.iconSmall,
              )),
          Center(
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.woman_outlined,
                  color: IconColors().froly,
                  size: IconSizes().iconSmall,
                )),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined), label: 'Yükle'),
        BottomNavigationBarItem(icon: Icon(Icons.delete), label: 'Sil'),
      ]),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  static const double icon2x = 80;
}

class IconColors {
  final Color froly = Colors.red;
}

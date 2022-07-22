import 'dart:ui';

import 'package:flutter/material.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: AppBarText(),
      ),
      body: Column(children: [
        Image.asset("assets/images/Dream-House-Transparent.png"),
        Image.network(
            "https://cpad.ask.fm/090/128/194/1940003021-1s08023-f68e5k7581gofcf/original/file.jpg"),
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => Container(
                      height: 300,
                    ));
          },
          child: Padding(
            padding: EdgeInsets.only(bottom: 10, top: 10, left: 5, right: 5),
            child: Text(
              'Giriş Yapınız',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)))),
          child: Padding(
            padding: EdgeInsets.only(bottom: 10, top: 10, left: 5, right: 5),
            child: Text(
              'Kayıt Ol',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 300,
                  ));
        },
        child: Icon(Icons.add_photo_alternate),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Yükle'),
        BottomNavigationBarItem(icon: Icon(Icons.delete), label: 'Sil'),
      ]),
    );
  }

  SizedBox _emptybox() {
    return SizedBox(
      height: 200,
    );
  }
}

class AppBarText extends StatelessWidget {
  const AppBarText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Sikici arslanmert');
  }
}

class Paddingstlye extends StatelessWidget {
  const Paddingstlye({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 100));
  }
}

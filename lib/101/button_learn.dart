import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';

class Buttonlearn extends StatelessWidget {
  const Buttonlearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GETIR'),
        titleTextStyle: ProjectStyles2.welcomeStyle,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'TIKLAYINIZ',
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Kayıt ol')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
          OutlinedButton(onPressed: (() {}), child: const Text('data')),
          InkWell(onTap: () {}, child: const Text('custom')),
          Container(
            height: 200,
            color: Colors.purple,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 40, left: 40),
                child: Text(
                  'Place Bid',
                  style: Theme.of(context).textTheme.headline5,
                ),
              )),
        ],
      ),
    );
  }
}

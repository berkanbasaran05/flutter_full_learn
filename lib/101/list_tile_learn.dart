import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  final imageurl = 'https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListTile(
        title: Text('Görüntülemek için '),
        leading: Image.network(imageurl),
        trailing: Icon(Icons.chevron_right),
        subtitle: const Text('daha fazlası için tıklayınız...'),
        onTap: () {},
      ),
    );
  }
}

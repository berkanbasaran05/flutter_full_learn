import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);
  final String _title = 'Welcome Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: Icon(Icons.chevron_left),
        //backgroundColor: Colors.transparent,
        //elevation: 0,
        //systemOverlayStyle: SystemUiOverlayStyle.light,
        //centerTitle: true,
        //actionsIconTheme: const IconThemeData(color: Colors.red),
        //toolbarTextStyle: TextStyle(color: Colors.red), bu toolbar kısmını yani sağ üst kısmını düzenliyor.
        //automaticallyImplyLeading: false, //otomatik olarak back butonu gelsin veya gelmesin.
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_email_unread_sharp),
          ),
          const Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
      body: Column(children: []),
    );
  }
}

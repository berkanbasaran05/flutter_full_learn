//showing yapmak için kullanılan sayfalarada kullanılır. yani item geldi onu göstereceğim. Static sayfa için
import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  StatelessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TittleTextWidget(),
          TittleTextWidget(),
          TittleTextWidget(),
          TittleTextWidget(),
          TittleTextWidget(),
          TittleTextWidget(),
          TittleTextWidget(),
          TittleTextWidget(),
          TittleTextWidget(),
          TittleTextWidget(),
          TittleTextWidget(),
          TittleTextWidget(),
          TittleTextWidget(),
          TittleTextWidget(),
          TittleTextWidget(),
          TittleTextWidget(),
        ],
      ),
    );
  }
}

class TittleTextWidget extends StatelessWidget {
  const TittleTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Ich liebe dich",
      style: Theme.of(context).textTheme.headline3,
    );
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';

class Phantom extends StatelessWidget {
  const Phantom({Key? key}) : super(key: key);
  final _title = 'Welcome';
  final wallet = '(231)';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [TitleWidget(title: _title), Text(wallet)],
          ),
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
    );
  }
}

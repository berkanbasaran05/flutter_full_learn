import 'dart:ffi';

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({Key? key, required this.initialColor}) : super(key: key);
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor;
  @override
  void initState() {
    _backgroundColor = widget.initialColor ?? Colors.transparent;
    super.initState();
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOntap,
        items: [
          BottomNavigationBarItem(
              icon: _ColorContainer(color: Colors.red), label: 'Red'),
          BottomNavigationBarItem(
              icon: _ColorContainer(color: Colors.yellow), label: 'Yellow'),
          BottomNavigationBarItem(
              icon: _ColorContainer(color: Colors.blue), label: 'Blue'),
        ],
        backgroundColor: Colors.transparent,
      ),
    );
  }

  void _colorOntap(int value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors {
  red,
  yellow,
  blue,
}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}

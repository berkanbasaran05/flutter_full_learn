import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/image_learn_view.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);
  final _title = 'Site yönetimlerine akıllı çözüm';
  final appbarTittle = 'Megafonum';
  final _notes = 'Giriş Yap';
  final _importNotes = 'Uye ol';
  final _description = 'Sektörel Bilişim farkı ile kolay çözümler';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTittle),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left),
        ),
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: PaddingItems.horizantalPadding,
        child: Column(children: [
          PngImage(name: ImageItems().dreamHouse),
          _TitleWidget(title: _title),
          Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(title: _description)),
          const Spacer(),
          SizedBox(
            child: PngImage(name: ImageItems().sektorel),
            width: 100,
            height: 100,
          ),
          _createButton(context),
          Padding(
            padding: const EdgeInsets.only(left: 90),
            child: Row(
              children: [
                Text('Henüz üye değil misiniz?'),
                TextButton(onPressed: () {}, child: Text(_importNotes)),
              ],
            ),
          ),
          const SizedBox(height: ButtonHeights.buttonNormalHeight),
        ]),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
            height: ButtonHeights.buttonNormalHeight,
            child: Center(
                child: Text(
              _notes,
              style: Theme.of(context).textTheme.headline5,
            ))));
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.title})
      : super(key: key);
  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizantalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}

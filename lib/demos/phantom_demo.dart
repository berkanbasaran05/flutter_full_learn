import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/image_learn_view.dart';

class Phantom extends StatelessWidget {
  const Phantom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleWidget(title: Textler()._title),
              Text(Textler().wallet)
            ],
          ),
        ),
        leading: AppBarWalletButton(),
        centerTitle: true,
        actions: [AppBarButton()],
        flexibleSpace: AppBarGradientContainer(),
      ),
      body: Container(
        decoration: DecorationItems.decorations,
        child: Column(
          children: [
            ValueWidget(),
            ButtonWidget(),
            ValueListWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: '',
            backgroundColor: Color(0xff1f1f1e)),
        BottomNavigationBarItem(
            icon: Icon(Icons.swap_vert_outlined), label: 'sill'),
        BottomNavigationBarItem(
            icon: Icon(Icons.flash_on_outlined), label: 'Yüklee'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Sil'),
      ], backgroundColor: Color(0xff1f1f1e)),
    );
  }
}

class AppBarGradientContainer extends StatelessWidget {
  const AppBarGradientContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Color(0xff3f2527), Color(0xff1f1f1e)]),
      ),
    );
  }
}

class ValueListWidget extends StatelessWidget with ImageItems {
  ValueListWidget({
    Key? key,
  }) : super(key: key);
  final title = "Solana";
  final subtitle = "2.99 Solana";

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 6,
        child: ListView(
          children: [
            ListTileWidget(),
            ListTileWidget(),
            ListTileWidget(),
            ListTileWidget(),
          ],
        ));
  }
}

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: TitleWidget(title: Textler().title),
      leading: PngImage(name: ImageItems().Solana),
      subtitle: TitleWidget2(title: Textler().subtitle),
      trailing: Column(
        children: [
          TitleWidget(title: Textler().solanabakiye),
          Text(
            '%5',
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ButtonDeposit(),
            SizedBox(width: 20),
            ButtonSend(),
          ],
        ));
  }
}

class ValueWidget extends StatelessWidget {
  const ValueWidget({
    Key? key,
  }) : super(key: key);
  final value = '£2000';

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  ValueTitleWidget(
                    value: value,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '-£200',
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '-5%',
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}

class AppBarWalletButton extends StatelessWidget {
  const AppBarWalletButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.wallet),
    );
  }
}

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {}, icon: Icon(Icons.qr_code_scanner_outlined));
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

class TitleWidget2 extends StatelessWidget {
  const TitleWidget2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
    );
  }
}

class ValueTitleWidget extends StatelessWidget {
  const ValueTitleWidget({Key? key, required this.value}) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: Theme.of(context).textTheme.headline5?.copyWith(
          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 50),
    );
  }
}

class ButtonSend extends StatelessWidget {
  const ButtonSend({
    Key? key,
  }) : super(key: key);
  final title = 'Send';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 175,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: TitleWidget(title: title),
        style: ElevatedButton.styleFrom(
            shadowColor: Colors.purple,
            primary: Color(0xff4c45ce),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)))),
      ),
    );
  }
}

class ButtonDeposit extends StatelessWidget {
  const ButtonDeposit({
    Key? key,
  }) : super(key: key);
  final title = 'Deposit';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 175,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: TitleWidget(title: title),
        style: ElevatedButton.styleFrom(
            shadowColor: Colors.purple,
            primary: Color(0xff4c45ce),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)))),
      ),
    );
  }
}

class Textler {
  final solanabakiye = '£2300';
  final title = "Solana";
  final subtitle = "2.99 Solana";
  final _title = 'Wallet';
  final wallet = '(G6a31..A9)';
  final value = '200£';
}

class DecorationItems {
  static const BoxDecoration decorations = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Color(0xff3f2527), Color(0xff1f1f1e)]),
  );
}

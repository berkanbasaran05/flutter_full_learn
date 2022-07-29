import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/image_learn_view.dart';
import 'package:flutter_full_learn/product/images_items.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class NftMarketplace extends StatefulWidget {
  const NftMarketplace({Key? key}) : super(key: key);

  @override
  State<NftMarketplace> createState() => _NftMarketplaceState();
}

class _NftMarketplaceState extends State<NftMarketplace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [_Menubutton()],
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _textstlye(context),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.chevron_right))
                    ])),
            const _listviewB(),
            const CardImageWidget(),
          ])),
      bottomNavigationBar: const BottomNavigation(),
    );
  }

  Text _textstlye(BuildContext context) {
    return Text(LanguageItems.nftTitlte,
        style: Theme.of(context)
            .textTheme
            .subtitle2
            ?.copyWith(fontSize: 30, fontWeight: FontWeight.w700));
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.add_circle_sharp), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: '')
    ]);
  }
}

class CardImageWidget extends StatelessWidget {
  const CardImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20), // Image border
          child: Stack(
            children: [
              SizedBox.fromSize(
                  size: const Size.fromRadius(700), // Image radius
                  child:
                      Image.network(ImagesItems().bearnft, fit: BoxFit.cover)),
              Padding(
                padding: const EdgeInsets.all(18),
                child: SizedBox(
                  height: 120,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const StackCardListTile1(),
                        const StackCardListTile2(),
                      ],
                    ),
                  ),
                ),
              ),
              Placebid()
            ],
          ),
        ),
      ),
    );
  }
}

class Placebid extends StatelessWidget {
  const Placebid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlaceBidCard();
  }

  Padding PlaceBidCard() {
    return Padding(
      padding: EdgeInsets.only(top: 430, left: 70, right: 70),
      child: SizedBox(
        height: 70,
        width: 700,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.white,
          child: TextButton(
              onPressed: () {},
              child: Text('Place Bid', style: TextStyles.titlestlye)),
        ),
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: CircleAvatar(
        radius: 18, // Image radius
        backgroundImage: NetworkImage(ImagesItems().bearnft),
      ),
    );
  }
}

// ignore: camel_case_types
class _listviewB extends StatelessWidget {
  const _listviewB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ListTile(
        minLeadingWidth: 10,
        minVerticalPadding: 20,
        title: Text('Jaily Crona'),
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.transparent,
          child: ClipOval(child: Image.network(ImagesItems().bearnft)),
        ),
        subtitle: Text('\$23,102.27 '),
        onTap: () {},
      ),
    );
  }
}

class _Menubutton extends StatelessWidget {
  const _Menubutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.black,
      onPressed: () {},
      icon: const Icon(Icons.menu),
    );
  }
}

class TextStyles {
  static TextStyle titlestlye = const TextStyle(
      fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black);
  static TextStyle dolarstlye = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 30,
  );
}

//StackCardlar
class StackCardListTile2 extends StatelessWidget {
  const StackCardListTile2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AvatarWidget(),
      trailing: Text('\$2.625,61'),
      title: Text('Jailyn Crona'),
      onTap: () {},
    );
  }
}

class StackCardListTile1 extends StatelessWidget {
  const StackCardListTile1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(LanguageItems.CardTitle,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(fontWeight: FontWeight.w700, fontSize: 40)),
        trailing: Text('1.10 ETH', style: TextStyles.titlestlye));
  }
}

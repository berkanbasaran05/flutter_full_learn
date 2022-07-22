import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);

  final String name = 'veli';
  final String? userName;

  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ('Welcome $name ${name.length}'),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: ProjectStyles.welcomeStyle,
          ),
          Text(
            ('Hello $name ${name.length}'),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: ProjectColors.welcomeColor,
                ),
          ),
          Text(keys.welcome)
        ],
      )),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      color: Color.fromARGB(255, 255, 255, 255),
      letterSpacing: 2,
      fontSize: 40,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.brown;
  static Color appbarColor = Colors.white;
}

//keysleri burada topla
class ProjectKeys {
  final String welcome = "Merhaba";
}

class ProjectStyles2 {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      fontStyle: FontStyle.italic,
      color: Color.fromARGB(255, 255, 255, 255),
      letterSpacing: 1,
      fontSize: 40,
      fontWeight: FontWeight.w600);
}

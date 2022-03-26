import 'package:dddj/component/button_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dadJoke = "Press shuffle to begin";

  void fetchDadJoke() async {
    // TODO Call icanhazdadjoke API
    // TODO Check status code
    // TODO Parse the JSON response
    // TODO Extract data from parse object
    // TODO Update state to display joke
  }

  void onPressShuffle() {
    fetchDadJoke();
  }

  void onPressShare() {
    Share.share(dadJoke);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 48, bottom: 24, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Text(
                "Your Daily Doze of Dad Jokez",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
            ),
            const CircleAvatar(
              radius: 100,
              foregroundImage: AssetImage('images/smile.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Text(
                dadJoke,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ButtonWithIcon(
                  icon: Icons.shuffle,
                  btnText: "Shuffle",
                  onTap: onPressShuffle,
                ),
                ButtonWithIcon(
                  icon: Icons.share,
                  btnText: "Share",
                  onTap: onPressShare,
                ),
              ],
            ),
            Expanded(child: Container()),
            Text(
              "Made with ♥ by @shivangagr",
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

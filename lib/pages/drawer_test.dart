import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:techcarreer_technopark_bootcamp/pages/settings.dart';
import 'package:techcarreer_technopark_bootcamp/pages/stateful_deneme.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  // str
  final String appBarTitle = 'User App';
  final String userApp = 'U S E R    A P P';
  
  
  // int - dbl
  final double appBarTitleSize = 24;
  final double userAppSize = 30;
  final double wh100 = 100;
  final pauseSec = const Duration(seconds: 3);
  final speedSec = const Duration(milliseconds: 80);



  @override
  Widget build(BuildContext context) {
    Function()? onTap;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle, 
          style: TextStyle(fontSize: appBarTitleSize)
          )
        ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              width: wh100,
              height: wh100,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    pause: pauseSec,
                    repeatForever: true,
                    animatedTexts: [
                      TyperAnimatedText(
                        userApp, 
                        speed: speedSec, 
                        textStyle: TextStyle(fontSize: userAppSize)
                      )
                    ]
                  )
                ],
              ),
            ),
            _homeListTile(context),
            _profileListTile(context),
            _settingsListTile(context),
          ],
        ),
      ),
      body: const Center(
        child: Text('data'),
      ),
    );
  }

  ListTile _settingsListTile(BuildContext context) {
    final String settingsText = 'Settings';
    final settingsIcon = Icon(Icons.settings, color: Colors.green);
    return ListTile(
            title: Text(settingsText),
            leading: settingsIcon,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          );
  }

  ListTile _profileListTile(BuildContext context) {
    const userProfile = Text('User Profile');
    const profileIcon = Icon(Icons.person, color: Colors.blue);

    return ListTile(
            title: userProfile,
            leading: profileIcon,
            onTap: () {

            },
          );
  }

  ListTile _homeListTile(BuildContext context) {
    const homePage = Text('Home Page');
    const homeIcon = Icon(Icons.home, color: Colors.red);
    return ListTile(
            title: homePage,
            leading: homeIcon,
            onTap: () {
              Navigator.pop(context);
            },
          );
  }
}

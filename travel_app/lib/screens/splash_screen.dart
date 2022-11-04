import 'package:flutter/material.dart';
import 'package:travel_app/helpers/asset_helper.dart';
import 'package:travel_app/helpers/image_helper.dart';
import 'package:travel_app/helpers/local_storage_helper.dart';
import 'package:travel_app/screens/intro_screen.dart';
import 'package:travel_app/screens/main_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirectIntroScreen();
  }

  void redirectIntroScreen() async {
    final ignoreIntroScreens =
        LocalStorageHelper.getValue('inoreIntroScreen') as bool?;

    await Future.delayed(const Duration(seconds: 5));
    if (ignoreIntroScreens != null && ignoreIntroScreens) {
      Navigator.of(context).pushNamed(IntroScreen.routeName);
      //Navigator.of(context).pushNamed(MainApp.routeName);
    } else {
      LocalStorageHelper.setValue('inoreIntroScreen', true);
      Navigator.of(context).pushNamed(IntroScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
            AssetHelper.backgroundSplash,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
            AssetHelper.circleSplash,
          ),
        ),
      ],
    );
  }
}

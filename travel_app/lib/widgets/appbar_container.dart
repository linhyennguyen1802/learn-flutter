import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/constants/color_palatte.dart';
import 'package:travel_app/constants/dimension_constants.dart';
import 'package:travel_app/helpers/asset_helper.dart';
import 'package:travel_app/helpers/image_helper.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    super.key,
    this.titleString,
    this.title,
    required this.implementLeading,
    required this.implementTraling,
    required this.child,
  });

  final Widget child;
  final Widget? title;
  final bool implementLeading;
  final String? titleString;
  final bool implementTraling;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: 186,
          child: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            elevation: 0,
            toolbarHeight: 98,
            backgroundColor: ColorPalette.backgroundScaffoldColor,
            title: title ??
                Row(children: [
                  if (implementLeading)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(kItemPadding),
                      child: Icon(
                        FontAwesomeIcons.arrowLeft,
                        color: Colors.black,
                        size: kDefaultIconSize,
                      ),
                    ),
                  Expanded(
                      child: Center(
                    child: Column(
                      children: [
                        Text(titleString ?? '',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )),
                      ],
                    ),
                  )),
                  if (implementTraling)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(kItemPadding),
                      child: Icon(
                        FontAwesomeIcons.bars,
                        color: Colors.black,
                        size: kDefaultIconSize,
                      ),
                    ),
                ]),
            flexibleSpace: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: Gradients.defaultGradientBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                      )),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: ImageHelper.loadFromAsset(AssetHelper.oval_1),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: ImageHelper.loadFromAsset(AssetHelper.oval_2),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: kMediumPadding),
          margin: EdgeInsets.only(top: 156),
          child: child,
        )
      ],
    ));
  }
}

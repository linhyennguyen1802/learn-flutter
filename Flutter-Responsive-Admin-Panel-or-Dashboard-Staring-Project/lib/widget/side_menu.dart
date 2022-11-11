import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawerListTitle(
              title: "Dashboard",
              svgSrc: "assets/icons/menu_dashbord.svg",
            ),
            DrawerListTitle(
              title: "Transaction",
              svgSrc: "assets/icons/menu_tran.svg",
            ),
            DrawerListTitle(
              title: "Task",
              svgSrc: "assets/icons/menu_task.svg",
            ),
            DrawerListTitle(
              title: "Documents",
              svgSrc: "assets/icons/menu_doc.svg",
            ),
            DrawerListTitle(
              title: "Store",
              svgSrc: "assets/icons/menu_store.svg",
            ),
            DrawerListTitle(
              title: "Notification",
              svgSrc: "assets/icons/menu_notification.svg",
            ),
            DrawerListTitle(
              title: "Profile",
              svgSrc: "assets/icons/menu_profile.svg",
            ),
            DrawerListTitle(
              title: "Settings",
              svgSrc: "assets/icons/menu_setting.svg",
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTitle extends StatelessWidget {
  const DrawerListTitle({
    Key key,
    this.title,
    this.svgSrc,
  }) : super(key: key);

  final String title;
  final String svgSrc;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}

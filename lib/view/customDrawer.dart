import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('assets/images/logo.png')),
            DrawerListTile(
              title: 'DashBoard',
              svgPath: 'assets/icons/menu_dashbord.svg',
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Transaction',
              svgPath: 'assets/icons/menu_tran.svg',
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Task',
              svgPath: 'assets/icons/menu_task.svg',
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Documents',
              svgPath: 'assets/icons/menu_doc.svg',
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Store',
              svgPath: 'assets/icons/menu_store.svg',
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Notification',
              svgPath: 'assets/icons/menu_notification.svg',
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Profile',
              svgPath: 'assets/icons/menu_profile.svg',
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Settings',
              svgPath: 'assets/icons/menu_setting.svg',
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key key,
    @required this.title,
    @required this.svgPath,
    @required this.onPress,
  }) : super(key: key);

  final String title, svgPath;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgPath,
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

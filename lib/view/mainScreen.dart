import 'package:dashboard_ui/components/dashboard.dart';
import 'package:dashboard_ui/view/customDrawer.dart';
import 'package:dashboard_ui/controllers/controller.dart';
import '../customResponsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (CustomResponsive.isDesktop(context)) Expanded(child: CustomDrawer()),
            Expanded(flex: 5, child: DashBoard()),
          ],
        ),
      ),
    );
  }
}

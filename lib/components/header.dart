import 'package:dashboard_ui/controllers/controller.dart';
import 'package:dashboard_ui/widgets/profileCardWidget.dart';
import 'package:dashboard_ui/widgets/searchFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../customResponsive.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!CustomResponsive.isDesktop(context))
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => context.read<MenuController>().controlMenu()),
        if (!CustomResponsive.isMobile(context))
          Text("Dashboard", style: Theme.of(context).textTheme.headline5),
        if (!CustomResponsive.isMobile(context))
          Spacer(flex: CustomResponsive.isDesktop(context) ? 2 : 1),
        Expanded(child: SearchField()),
        ProfileCardWidget()
      ],
    );
  }
}

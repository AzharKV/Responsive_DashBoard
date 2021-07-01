import 'package:dashboard_ui/components/recentList.dart';
import 'package:dashboard_ui/components/storageDetails.dart';
import '../customResponsive.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'addFilesRow.dart';
import '../widgets/gridFileWidget.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    return Column(
      children: [
        AddFileRow(),
        SizedBox(height: defaultPadding),
        CustomResponsive(
            mobile: GridFileWidget(
                crossAxisCount: size < 650 ? 2 : 4, childAspectRatio: 1),
            tablet: GridFileWidget(),
            desktop: GridFileWidget(childAspectRatio: size < 1400 ? 1.1 : 1.4)),
        SizedBox(height: defaultPadding),
        RecentList(),
        if (CustomResponsive.isMobile(context)) SizedBox(height: defaultPadding),
        if (CustomResponsive.isMobile(context)) StorageDetails()
      ],
    );
  }
}

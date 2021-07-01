import 'package:dashboard_ui/components/storageDetails.dart';
import 'package:dashboard_ui/constants.dart';
import 'package:dashboard_ui/customResponsive.dart';
import 'package:flutter/material.dart';
import 'header.dart';
import 'myFiles.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(
            top: defaultPadding, left: defaultPadding, right: defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 5, child: MyFiles()),
                if (!CustomResponsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                if (!CustomResponsive.isMobile(context))
                  Expanded(flex: 2, child: StorageDetails())
              ],
            )
          ],
        ),
      ),
    );
  }
}

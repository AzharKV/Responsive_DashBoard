import 'package:dashboard_ui/widgets/storageInfoCardWidget.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/pieChartWidget.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Storage Details",
              style: TextStyle(fontWeight: FontWeight.w500)),
          PieChartWidget(),
          SizedBox(width: defaultPadding),
          StorageInfoCardWidget(
              svgPath: 'assets/icons/Documents.svg',
              title: 'Documents Files',
              amountOfFiles: '1325 Files',
              numOfFiles: 1.3),
          StorageInfoCardWidget(
              svgPath: 'assets/icons/media_file.svg',
              title: 'Media Files',
              amountOfFiles: '3555 Files',
              numOfFiles: 15.3),
          StorageInfoCardWidget(
              svgPath: 'assets/icons/folder.svg',
              title: 'Other Files',
              amountOfFiles: '225 Files',
              numOfFiles: 1.3),
          StorageInfoCardWidget(
              svgPath: 'assets/icons/unknown.svg',
              title: 'Unknown',
              amountOfFiles: '125 Files',
              numOfFiles: 1.3)
        ],
      ),
    );
  }
}

import 'package:dashboard_ui/models/MyFilesModel.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'fileInfoCardWidget.dart';

class GridFileWidget extends StatelessWidget {
  const GridFileWidget({
    Key key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
          childAspectRatio: childAspectRatio),
      itemBuilder: (BuildContext context, int index) => FileInfoCardWidget(
        info: demoMyFiles[index],
      ),
    );
  }
}

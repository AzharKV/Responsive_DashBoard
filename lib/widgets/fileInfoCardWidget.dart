import 'package:dashboard_ui/widgets/progressBarWidget.dart';
import 'package:dashboard_ui/models/MyFilesModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';

class FileInfoCardWidget extends StatelessWidget {
  const FileInfoCardWidget({Key key, @required this.info}) : super(key: key);

  final MyFilesModel info;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: secondaryColor),
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(defaultPadding * 0.75),
                decoration: BoxDecoration(
                  color: info.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(info.svgSrc, color: info.color),
              ),
              Icon(Icons.more_vert, color: Colors.white54)
            ],
          ),
          Text(info.title, maxLines: 1, overflow: TextOverflow.ellipsis),
          ProgressLBarWidget(percentage: info.percentage, color: info.color),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${info.numOfFiles} Files',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.white70),
              ),
              Text(
                info.totalStorage,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.white70),
              ),
            ],
          )
        ],
      ),
    );
  }
}

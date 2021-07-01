import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';

class StorageInfoCardWidget extends StatelessWidget {
  const StorageInfoCardWidget({
    Key key,
    @required this.svgPath,
    @required this.title,
    @required this.amountOfFiles,
    @required this.numOfFiles,
  }) : super(key: key);

  final String svgPath, title, amountOfFiles;
  final double numOfFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      margin: EdgeInsets.only(top: defaultPadding),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
          borderRadius: BorderRadius.all(Radius.circular(defaultPadding))),
      child: Row(
        children: [
          SvgPicture.asset(svgPath, height: 20, width: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
                  Text(amountOfFiles,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(color: Colors.white))
                ],
              ),
            ),
          ),
          Text("$numOfFiles GB")
        ],
      ),
    );
  }
}

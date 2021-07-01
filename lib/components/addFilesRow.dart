import 'package:dashboard_ui/customResponsive.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class AddFileRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('My Files', style: Theme.of(context).textTheme.subtitle1),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Add New'),
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
                horizontal: defaultPadding * 1.5,
                vertical:
                    defaultPadding / (CustomResponsive.isMobile(context) ? 2 : 1)),
          ),
        )
      ],
    );
  }
}

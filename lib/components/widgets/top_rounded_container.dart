import 'package:flutter/material.dart';

import '../../config/app_size_config.dart';

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    super.key,
    required this.color,
    required this.child,
  });

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: AppSizeConfig.getProportionateScreenWidth(20)),
      padding: EdgeInsets.only(top: AppSizeConfig.getProportionateScreenWidth(20)),
      width: double.infinity,
      // height: 300,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}

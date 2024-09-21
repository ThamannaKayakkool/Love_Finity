import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/colors.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/fonts.dart';
import 'package:love_finity/src/core/constants/styles.dart';
import 'package:love_finity/src/core/constants/values.dart';

class BoxWidgets extends StatelessWidget {
  final String image;
  final String nameAge;
  IconData? icon;
  final String place;

  BoxWidgets(
      {super.key,
      required this.image,
      required this.nameAge,
      this.icon,
      required this.place});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.s15),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          width: 119,
        ),
      ),
      Positioned(
      left: AppPadding.p15,
        top:AppPadding.p120,
        child: Row(
          children: [
            Text(
              nameAge,
              style: getSemiBoldStyle(color: ColorConstants.whiteColor,fontSize: FontSize.s16),
            ),
            wSizedBox5,
            Icon(
              icon,
              size: FontSize.s8,
              color: ColorConstants.greenColor,
            )
          ],
        ),
      ),
      Positioned(
        left: AppPadding.p40,
        top:AppPadding.p145,
        child: Text(
          place,
          style: getLightStyle(color: ColorConstants.whiteColor),
        ),
      )
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/colors.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/fonts.dart';
import 'package:love_finity/src/core/constants/styles.dart';
import 'package:love_finity/src/core/constants/values.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  IconData? icon;
  final String time;
  void Function() onTap;

  ListTileWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.time,
      required this.onTap,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        title: Text(
          title,
          style: getSemiBoldStyle(
              color: ColorConstants.blackColor, fontSize: FontSize.s20),
        ),
        subtitle: Text(subTitle,
            style: getMediumStyle(
                color: ColorConstants.blackColor, fontSize: FontSize.s15)),
        leading: CircleAvatar(
          radius: AppSize.s28,
          backgroundImage: AssetImage(image),
        ),
        trailing: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: AppPadding.p18),
              child: Icon(
                icon,
                size: FontSize.s15,
                color: ColorConstants.radialRedColor,
              ),
            ),
            hSizedBox5,
            Text(
              time,
              style: getRegularStyle(
                  color: ColorConstants.suvaGreyColor, fontSize: FontSize.s14),
            ),
            wSizedBox20,
          ],
        ),
      ),
    );
  }
}

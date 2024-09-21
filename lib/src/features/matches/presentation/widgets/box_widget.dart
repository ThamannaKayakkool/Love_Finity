import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/colors.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/fonts.dart';
import 'package:love_finity/src/core/constants/styles.dart';
import 'package:love_finity/src/core/constants/values.dart';

class BoxWidget extends StatelessWidget {
  final String image;
  final String per;
  final String km;
  final String nameAge;
  IconData? icon;
  final String place;
  void Function() onTap;

  BoxWidget(
      {super.key,
      required this.image,
      required this.per,
      required this.km,
      required this.nameAge,
      required this.place,
      required this.onTap,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding:
            const EdgeInsets.only(left: AppPadding.p18, top: AppPadding.p20),
        child: Stack(children: [
          Container(
            height: 250,
            width: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.s20),
                border:
                    Border.all(color: ColorConstants.radialRedColor, width: 4)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSize.s15),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: AppPadding.p33, top: AppPadding.p2),
            child: Container(
              height: 21,
              width: 110,
              decoration: BoxDecoration(
                  color: ColorConstants.radialRedColor,
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(AppSize.s15),
                      bottomLeft: Radius.circular(AppSize.s15)),
                  border: Border.all(color: ColorConstants.radialRedColor)),
              child: Padding(
                padding: const EdgeInsets.only(left: AppPadding.p16),
                child: Text(
                  '$per% Match',
                  style: getSemiBoldStyle(color: ColorConstants.whiteColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.p45, top: AppPadding.p150),
            child: Container(
              height: 24,
              width: 95,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s20),
                  color: ColorConstants.whiteColor.withOpacity(0.20),
                  border: Border.all(
                      color: ColorConstants.whiteColor.withOpacity(0.20),
                      width: 2)),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: AppPadding.p10, top: AppPadding.p2),
                child: Text(
                  '$km km away',
                  style: getMediumStyle(color: ColorConstants.whiteColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.p38, top: AppPadding.p178),
            child: Row(
              children: [
                Text(
                  nameAge,
                  style: getSemiBoldStyle(
                      color: ColorConstants.whiteColor,
                      fontSize: AppPadding.p20),
                ),
                wSizedBox5,
                Icon(
                  icon,
                  size: FontSize.s10,
                  color: ColorConstants.greenColor,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.p55, top: AppPadding.p210),
            child: Text(
              place,
              style: getLightStyle(color: ColorConstants.whiteColor),
            ),
          )
        ]),
      ),
    );
  }
}

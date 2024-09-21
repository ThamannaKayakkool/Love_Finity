import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/assets.dart';
import 'package:love_finity/src/core/constants/colors.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/fonts.dart';
import 'package:love_finity/src/core/constants/styles.dart';
import 'package:love_finity/src/core/constants/values.dart';
import 'package:love_finity/src/core/utils/utils.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = Utils().getScreenSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 500,
                  width: double.infinity,
                  child: Image.asset(
                    Assets.james,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: AppPadding.p350,
                  child: Container(
                    height: 200,
                    width: screenSize.width,
                    decoration: BoxDecoration(
                      color: ColorConstants.whiteColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(AppSize.s25),
                        topLeft: Radius.circular(AppSize.s25),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 45,
                          height: 4.5,
                          margin: const EdgeInsets.only(
                              top: AppPadding.p10, bottom: AppPadding.p10),
                          decoration: BoxDecoration(
                            color:
                                ColorConstants.lightGreyColor.withOpacity(0.4),
                            shape: BoxShape.rectangle,
                            borderRadius: const BorderRadius.all(
                                Radius.circular(AppSize.s8)),
                          ),
                        ),
                       hSizedBox10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            circleWidget(Assets.love, 'Match', '80%'),
                            circleWidget(
                                Assets.birthday, 'Age', '20 years old'),
                            circleWidget(Assets.gender, 'Gender', 'Male'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: AppPadding.p15,
                  top: AppPadding.p50,
                  child: IconButton(
                    style: IconButton.styleFrom(
                      fixedSize: const Size(20, 10),
                      shape: const CircleBorder(),
                      side: BorderSide(
                        color: ColorConstants.whiteColor.withOpacity(0.6),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: ColorConstants.whiteColor,
                      size: FontSize.s18,
                    ),
                  ),
                ),
                Positioned(
                  left: AppPadding.p290,
                  top: AppPadding.p50,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p4, vertical: AppPadding.p5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSize.s20),
                      color: ColorConstants.whiteColor.withOpacity(0.20),
                      border: Border.all(
                          color: ColorConstants.whiteColor.withOpacity(0.8),
                          width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: AppPadding.p10, top: AppPadding.p2),
                      child: Row(
                        children: [
                          Image.asset(Assets.arrow),
                          wSizedBox5,
                          Text(
                            '2.5 km',
                            style: getMediumStyle(
                                color: ColorConstants.whiteColor,
                                fontSize: FontSize.s15),
                          ),
                          wSizedBox5,
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: AppPadding.p160,
                  top: AppPadding.p280,
                  child: Row(
                    children: [
                      Text(
                        'James, 20',
                        style: getBoldStyle(
                          color: ColorConstants.whiteColor,
                          fontSize: FontSize.s33,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: AppPadding.p163,
                  top: AppPadding.p320,
                  child: Text(
                    'HANDOVER, GERMANY',
                    style: getMediumStyle(
                        color: ColorConstants.whiteColor.withOpacity(0.8),
                        fontSize: FontSize.s13),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppPadding.p16),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('My bio',
                      style: getRegularStyle(
                          color: ColorConstants.suvaGreyColor,
                          fontSize: FontSize.s16))),
            ),
            hSizedBox5,
            Padding(
              padding: const EdgeInsets.only(
                  left: AppPadding.p16, top: AppPadding.p5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "A good listener.I love having a good talk \nto know each other's side 😍. ",
                    style: getMediumStyle(
                        color: ColorConstants.blackColor,
                        fontSize: FontSize.s16)),
              ),
            ),
            hSizedBox5,
            Padding(
              padding: const EdgeInsets.only(left: AppPadding.p16),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Interests',
                      style: getRegularStyle(
                          color: ColorConstants.suvaGreyColor,
                          fontSize: FontSize.s16))),
            ),
            hSizedBox10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                interest('🍃 Nature'),
                interest('🏝 Beaches'),
                interest('✍ Writing'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppPadding.p25, top: AppPadding.p10),
              child: Row(
                children: [
                  interest('🙂 People'),
                  wSizedBox40,
                  interest('💪 Gym'),
                ],
              ),
            ),
            hSizedBox10,
            Padding(
              padding: const EdgeInsets.only(left: AppPadding.p16),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Other info',
                      style: getRegularStyle(
                          color: ColorConstants.suvaGreyColor,
                          fontSize: FontSize.s16))),
            ),
            hSizedBox10,
            otherInfo(Assets.ruler, 'Height', '180 cm'),
            hSizedBox5,
            _divider(),
            otherInfo(Assets.speakIcon, 'Speak', 'Spanish,English'),
         _divider(),
            hSizedBox10,
            Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                  color: ColorConstants.whiteColor,
                  borderRadius: BorderRadius.circular(AppSize.s40),
                  boxShadow: [
                    BoxShadow(
                        color: ColorConstants.lightGreyColor.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 2)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  circle(Assets.close,
                      ColorConstants.radialRedColor.withOpacity(0.1)),
                  circle(Assets.message2, ColorConstants.radialRedColor),
                  circle(Assets.love2, ColorConstants.pinkColor),
                ],
              ),
            ),
            hSizedBox20,
          ],
        ),
      ),
    );
  }

  Widget circleWidget(String image, String text, String text2) {
    return Column(
      children: [
        CircleAvatar(
          radius: AppSize.s25,
          backgroundColor: ColorConstants.pinkColor,
          child: Image.asset(
            image,
            width: 30,
          ),
        ),
        hSizedBox10,
        Text(
          text,
          style: getRegularStyle(
              color: ColorConstants.suvaGreyColor, fontSize: FontSize.s14),
        ),
        Text(
          text2,
          style: getMediumStyle(color: ColorConstants.pinkColor, fontSize: FontSize.s16),
        ),
      ],
    );
  }

  Widget interest(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p15, vertical: AppPadding.p8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s20),
        border: Border.all(
            color: ColorConstants.pinkColor.withOpacity(0.2), width: 1),
      ),
      child: Center(
          child: Text(
        text,
        style: getMediumStyle(
            color: ColorConstants.blackColor, fontSize: FontSize.s14),
      )),
    );
  }

  Widget otherInfo(String image, String text, String text2) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p26),
      child: Row(
        children: [
          Image.asset(image),
          wSizedBox10,
          Text(
            text,
            style: getRegularStyle(
                color: ColorConstants.blackColor, fontSize: FontSize.s16),
          ),
          wSizedBox170,
          Text(
            text2,
            style: getMediumStyle(
                color: ColorConstants.blackColor, fontSize: FontSize.s14),
          ),
        ],
      ),
    );
  }

  Widget circle(String image, Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: AppSize.s30,
        backgroundColor: color,
        child: Image.asset(
          image,
          width: 20,
        ),
      ),
    );
  }
  Widget _divider(){
    return        Divider(
      color: ColorConstants.suvaGreyColor.withOpacity(0.4),
      indent: AppPadding.p25,
      endIndent: AppPadding.p25,
    );
  }
}

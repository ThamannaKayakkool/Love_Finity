import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/assets.dart';
import 'package:love_finity/src/core/constants/colors.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/fonts.dart';
import 'package:love_finity/src/core/constants/styles.dart';
import 'package:love_finity/src/core/constants/values.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            hSizedBox60,
            Row(
              children: [
                wSizedBox7,
                IconButton(
                    style: IconButton.styleFrom(
                        fixedSize: const Size(20, 10),
                        shape: const CircleBorder(),
                        side: BorderSide(
                            color: ColorConstants.blackColor.withOpacity(0.2))),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: ColorConstants.blackColor,
                      size: FontSize.s18,
                    )),
                wSizedBox7,
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: AppSize.s20,
                      backgroundImage: AssetImage(Assets.james),
                    ),
                    Positioned(
                        left: AppPadding.p28,
                        top: AppPadding.p28,
                        child: Icon(
                          Icons.circle,
                          color: ColorConstants.greenColor,
                          size: FontSize.s10,
                        ))
                  ],
                ),
                wSizedBox10,
                Column(
                  children: [
                    Text(
                      'James Colton',
                      style: getSemiBoldStyle(
                          color: ColorConstants.blackColor,
                          fontSize: FontSize.s17),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: AppPadding.p45),
                      child: Text(
                        'Active now',
                        style: getRegularStyle(
                          color: ColorConstants.suvaGreyColor,
                        ),
                      ),
                    ),
                  ],
                ),
                wSizedBox120,
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            ),
            hSizedBox20,
            Container(
              width: 68,
              height: 33,
              decoration: BoxDecoration(
                  color: ColorConstants.whiteSmokeColor,
                  borderRadius: BorderRadius.circular(AppSize.s40),
                  border: Border.all(
                      color: ColorConstants.whiteSmokeColor, width: 3)),
              child: Center(
                child: Text(
                  'Today',
                  style: getRegularStyle(
                      color: ColorConstants.blackColor, fontSize: FontSize.s13),
                ),
              ),
            ),
            hSizedBox20,
            _leftAlignMessage('Hey! How have you been?'),
            hSizedBox5,
            _leftAlignMessage('Wanna catch up for a beer?'),
            _leftAlignTime('12:15 PM'),
            hSizedBox20,
            _rightAlignMessage("Awesome! Let's meet up", AppSize.s40, 210),
            hSizedBox10,
            _rightAlignMessage(
                "Can I also get my cousin along?\n                          Will that be okay?",
                AppSize.s15,
                260),
            _rightAlignTime('12:20 PM'),
            hSizedBox5,
            _leftAlignMessage('Yeah sure! get him too.'),
            _leftAlignTime('12:22 PM'),
            hSizedBox20,
            _rightAlignMessage("Alright! See you soon!", AppSize.s40, 190),
            _rightAlignTime('12:25 PM'),
            Padding(
              padding: const EdgeInsets.only(left: AppPadding.p20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConstants.pinkColor,
                      borderRadius: BorderRadius.circular(AppSize.s40)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: AppPadding.p2,
                            bottom: AppPadding.p2,
                            left: AppPadding.p10),
                        child: CircleAvatar(
                            radius: AppSize.s11,
                            backgroundColor: ColorConstants.whiteColor,
                            child: Icon(
                              Icons.play_arrow,
                              size: FontSize.s18,
                              color: ColorConstants.pinkColor,
                            )),
                      ),
                      wSizedBox5,
                      Image.asset(Assets.record)
                    ],
                  ),
                ),
              ),
            ),
            _leftAlignTime('12:22 PM'),
            hSizedBox20,
            _rightAlignMessage("okay sure!", AppSize.s40, 105),
            _rightAlignTime('12:25 PM'),
            hSizedBox40,
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                color: ColorConstants.whiteColor,
                borderRadius: BorderRadius.circular(AppSize.s40),
                border: Border.all(
                    color: ColorConstants.suvaGreyColor.withOpacity(0.3)),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: CircleAvatar(
                        radius: AppSize.s20,
                        backgroundColor: ColorConstants.pinkColor,
                        child: Icon(
                          Icons.add,
                          color: ColorConstants.whiteColor,
                        )),
                  ),
                  Text(
                    'Type Message',
                    style: getRegularStyle(
                        color: ColorConstants.blackColor,
                        fontSize: FontSize.s15),
                  ),
                  wSizedBox120,
                  Row(
                    children: [
                      VerticalDivider(
                        endIndent: AppPadding.p13,
                        indent: AppPadding.p13,
                        color: ColorConstants.suvaGreyColor.withOpacity(0.3),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: AppPadding.p8,
                            top: AppPadding.p8,
                            bottom: AppPadding.p8),
                        child: CircleAvatar(
                          radius: AppSize.s20,
                          backgroundColor: ColorConstants.pinkColor,
                          child: Icon(
                            Icons.mic,
                            size: FontSize.s18,
                            color: ColorConstants.whiteColor,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _leftAlignMessage(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p23),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 200,
          padding: const EdgeInsets.only(
              left: AppPadding.p5,
              top: AppPadding.p10,
              bottom: AppPadding.p10,
              right: AppPadding.p5),
          decoration: BoxDecoration(
              color: ColorConstants.whiteSmokeColor.withOpacity(0.9),
              borderRadius: BorderRadius.circular(AppSize.s40),
              border:
                  Border.all(color: ColorConstants.whiteSmokeColor, width: 3)),
          child: Center(
            child: Text(
              text,
              style: getRegularStyle(
                  color: ColorConstants.blackColor, fontSize: FontSize.s12),
            ),
          ),
        ),
      ),
    );
  }

  Widget _leftAlignTime(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p23, top: AppPadding.p8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: getRegularStyle(
            color: ColorConstants.suvaGreyColor,
          ),
        ),
      ),
    );
  }

  Widget _rightAlignMessage(String text, double radius, double width) {
    return Padding(
      padding: const EdgeInsets.only(right: AppPadding.p18),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: width,
          padding:
              const EdgeInsets.only(top: AppPadding.p7, bottom: AppPadding.p7),
          decoration: BoxDecoration(
              color: ColorConstants.lavenderBlushColor,
              borderRadius: BorderRadius.circular(radius),
              border: Border.all(
                color: ColorConstants.pinkColor.withOpacity(0.1),
              )),
          child: Center(
            child: Text(
              text,
              style: getRegularStyle(
                  color: ColorConstants.blackColor, fontSize: FontSize.s14),
            ),
          ),
        ),
      ),
    );
  }

  Widget _rightAlignTime(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: AppPadding.p16, top: AppPadding.p8),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          text,
          style: getRegularStyle(
            color: ColorConstants.suvaGreyColor,
          ),
        ),
      ),
    );
  }
}

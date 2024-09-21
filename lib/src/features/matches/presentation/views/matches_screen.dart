import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/assets.dart';
import 'package:love_finity/src/core/constants/colors.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/fonts.dart';
import 'package:love_finity/src/core/constants/styles.dart';
import 'package:love_finity/src/core/constants/values.dart';
import 'package:love_finity/src/core/utils/utils.dart';
import 'package:love_finity/src/features/matches/presentation/views/filters_screen.dart';
import 'package:love_finity/src/features/matches/presentation/widgets/box_widget.dart';
import 'package:love_finity/src/features/matches/presentation/views/profile_screen.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConstants.whiteColor,
        leading: IconButton(
            style: IconButton.styleFrom(
                fixedSize: const Size(20, 10),
                shape: const CircleBorder(),
                side: BorderSide(
                    color: ColorConstants.blackColor.withOpacity(0.2))),
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: ColorConstants.blackColor,
              size: FontSize.s18,
            )),
        title: Text(
          'Matches',
          style: getBoldStyle(
              color: ColorConstants.blackColor, fontSize: FontSize.s28),
        ),
        actions: [
          IconButton(
              style: IconButton.styleFrom(
                  fixedSize: const Size(45, 45),
                  shape: const CircleBorder(),
                  side: BorderSide(
                      color: ColorConstants.pinkColor.withOpacity(0.2))),
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: ColorConstants.whiteColor,
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return DraggableScrollableSheet(
                      expand: false,
                      initialChildSize: 0.75,
                      minChildSize: 0.4,
                      maxChildSize: 0.9,
                      builder: (context, scrollController) {
                        return SingleChildScrollView(
                          controller: scrollController,
                          child: const FiltersScreen(),
                        );
                      },
                    );
                  },
                );
              },
              icon: Image.asset(Assets.settings)),
          wSizedBox10,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _roundedRectangle(context),
            hSizedBox20,
            Padding(
              padding: const EdgeInsets.only(left: AppPadding.p15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Your Matches ",
                      style: getBoldStyle(
                          color: ColorConstants.blackColor,
                          fontSize: FontSize.s22)),
                  TextSpan(
                      text: "52",
                      style: getBoldStyle(
                          color: ColorConstants.pinkColor,
                          fontSize: FontSize.s20)),
                ])),
              ),
            ),
            _matchesWidget(context),
          ],
        ),
      ),
    );
  }

  Widget _roundedRectangle(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    return Padding(
      padding: const EdgeInsets.only(top: AppPadding.p20, left: AppPadding.p13),
      child: Row(
        children: [
          Container(
            width: screenSize.width * 0.45,
            decoration: BoxDecoration(
                color: ColorConstants.lavenderBlushColor,
                borderRadius: BorderRadius.circular(AppSize.s40),
                border: Border.all(color: ColorConstants.pinkColor, width: 2)),
            child: Row(
              children: [
                wSizedBox5,
                Stack(children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        top: AppPadding.p2, bottom: AppPadding.p2),
                    child: CircleAvatar(
                      radius: AppSize.s30,
                      backgroundImage: AssetImage(Assets.profilePic1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: AppPadding.p16, top: AppPadding.p20),
                    child: Icon(
                      Icons.favorite,
                      color: ColorConstants.whiteColor,
                      size: FontSize.s28,
                    ),
                  )
                ]),
                wSizedBox7,
                Text(
                  '32',
                  style: getSemiBoldStyle(
                      color: ColorConstants.pinkColor, fontSize: FontSize.s20),
                ),
                wSizedBox7,
                Text(
                  'Likes \nReceived',
                  style: getMediumStyle(
                    color: ColorConstants.blackColor,
                  ),
                )
              ],
            ),
          ),
          wSizedBox15,
          Container(
            width: screenSize.width * 0.45,
            decoration: BoxDecoration(
                color: ColorConstants.whiteColor,
                borderRadius: BorderRadius.circular(AppSize.s40),
                border: Border.all(color: ColorConstants.pinkColor, width: 2)),
            child: Row(
              children: [
                wSizedBox5,
                Stack(children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        top: AppPadding.p2, bottom: AppPadding.p2),
                    child: CircleAvatar(
                      radius: AppSize.s30,
                      backgroundImage: AssetImage(Assets.profilePic2),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: AppPadding.p16, top: AppPadding.p16),
                      child: Image.asset(
                        Assets.message2,
                      ))
                ]),
                wSizedBox7,
                Text(
                  '15',
                  style: getSemiBoldStyle(
                      color: ColorConstants.pinkColor, fontSize: FontSize.s20),
                ),
                wSizedBox7,
                Text(
                  'Connect \nRequests',
                  style: getMediumStyle(
                    color: ColorConstants.blackColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _matchesWidget(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            BoxWidget(
              image: Assets.james,
              per: '100',
              km: '1.3',
              nameAge: 'James, 20',
              place: 'HANDOVER',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ));
              },
              icon: Icons.circle,
            ),
            BoxWidget(
              image: Assets.eddie,
              per: '94',
              km: '2',
              nameAge: 'Eddie, 23',
              place: 'DORTMUND',
              onTap: () {},
              icon: Icons.circle,
            )
          ],
        ),
        Row(
          children: [
            BoxWidget(
              image: Assets.finn,
              per: '92',
              km: '2.9',
              nameAge: 'Finn, 21',
              place: 'COLOGNE',
              onTap: () {},
              icon: Icons.circle,
            ),
            BoxWidget(
              image: Assets.brandon,
              per: '89',
              km: '2.5',
              nameAge: 'Brandon, 20',
              onTap: () {},
              place: 'HAMBURG',
            )
          ],
        ),
        Row(
          children: [
            BoxWidget(
              image: Assets.james,
              per: '100',
              km: '1.3',
              nameAge: 'James, 20',
              place: 'HANDOVER',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ));
              },
              icon: Icons.circle,
            ),
            BoxWidget(
              image: Assets.eddie,
              per: '94',
              km: '2',
              nameAge: 'Eddie, 23',
              place: 'DORTMUND',
              onTap: () {},
              icon: Icons.circle,
            )
          ],
        ),
      ],
    );
  }
}

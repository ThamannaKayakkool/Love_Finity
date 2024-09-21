import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/assets.dart';
import 'package:love_finity/src/core/constants/colors.dart';
import 'package:love_finity/src/core/constants/values.dart';
import 'package:love_finity/src/features/matches/presentation/views/matches_screen.dart';
import 'package:love_finity/src/features/messages/presentation/views/messages_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectIndex = 0;
  List<Widget> body = [
    Container(),
    Container(),
    const MatchesScreen(),
    const MessagesScreen(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: body[_selectIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
            right: AppPadding.p15,
            left: AppPadding.p15,
            bottom: AppPadding.p20),
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: ColorConstants.greyShade300Color.withOpacity(0.7),
                  blurRadius: 2,
                  spreadRadius: 2)
            ],
            borderRadius: BorderRadius.circular(AppSize.s40),
            color: ColorConstants.whiteColor,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.s40),
            child: NavigationBar(
              surfaceTintColor: ColorConstants.whiteColor,
              destinations: [
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p15),
                  child: NavigationDestination(
                    icon: Image.asset(
                      Assets.home,
                      color: _selectIndex == 0
                          ? ColorConstants.whiteColor
                          : ColorConstants.radialRedColor,
                    ),
                    label: '',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p15),
                  child: NavigationDestination(
                    icon: Image.asset(
                      Assets.location,
                      color: _selectIndex == 1
                          ? ColorConstants.whiteColor
                          : ColorConstants.radialRedColor,
                    ),
                    label: '',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p15),
                  child: NavigationDestination(
                    icon: _selectIndex == 2
                        ? Image.asset(Assets.matches2,
                            color: ColorConstants.whiteColor)
                        : Image.asset(Assets.matches,
                            color: ColorConstants.radialRedColor),
                    label: '',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p15),
                  child: NavigationDestination(
                    icon: _selectIndex == 3
                        ? Image.asset(Assets.message2,
                            color: ColorConstants.whiteColor)
                        : Image.asset(Assets.message,
                            color: ColorConstants.radialRedColor),
                    label: '',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p15),
                  child: NavigationDestination(
                    icon: Image.asset(
                      Assets.setting,
                      color: _selectIndex == 4
                          ? ColorConstants.whiteColor
                          : ColorConstants.radialRedColor,
                    ),
                    label: '',
                  ),
                ),
              ],
              selectedIndex: _selectIndex,
              onDestinationSelected: (value) {
                setState(() {
                  _selectIndex = value;
                });
              },
              backgroundColor: ColorConstants.whiteColor,
              indicatorColor: ColorConstants.pinkColor,
              indicatorShape: const CircleBorder(),
            ),
          ),
        ),
      ),
    );
  }
}

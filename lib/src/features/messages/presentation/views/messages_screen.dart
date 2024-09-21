import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/assets.dart';
import 'package:love_finity/src/core/constants/colors.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/fonts.dart';
import 'package:love_finity/src/core/constants/styles.dart';
import 'package:love_finity/src/core/constants/values.dart';
import 'package:love_finity/src/features/messages/presentation/views/chat_screen.dart';
import 'package:love_finity/src/features/messages/presentation/widgets/box_widgets.dart';
import 'package:love_finity/src/features/messages/presentation/widgets/list_view_widget.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

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
          'Messages',
          style: getBoldStyle(
              color: ColorConstants.blackColor, fontSize: FontSize.s28),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: AppPadding.p18, top: AppPadding.p16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent Matches',
                  style: getSemiBoldStyle(
                      color: ColorConstants.blackColor, fontSize: FontSize.s20),
                ),
              ),
            ),
            hSizedBox15,
            _recentMatches(),
            _messengerWidget(context),
          ],
        ),
      ),
    );
  }

  Widget _recentMatches() {
    return Row(
      children: [
        wSizedBox15,
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSize.s15),
              child: Image.asset(
                Assets.profilePic3,
                fit: BoxFit.cover,
                width: 120,
              ),
            ),
            Positioned(
              left: AppPadding.p45,
              top: AppPadding.p60,
              child: Icon(
                Icons.favorite,
                color: ColorConstants.whiteColor,
                size: FontSize.s28,
              ),
            ),
            Positioned(
                left: AppPadding.p50,
                top: AppPadding.p90,
                child: Text(
                  '32',
                  style: getSemiBoldStyle(
                      color: ColorConstants.whiteColor, fontSize: FontSize.s16),
                )),
          ],
        ),
        wSizedBox10,
        BoxWidgets(
          image: Assets.halima,
          nameAge: 'Halima, 19',
          place: 'BERLIN',
          icon: Icons.circle,
        ),
        wSizedBox10,
        BoxWidgets(
          image: Assets.robert,
          nameAge: 'Robert, 18',
          place: 'MUNICH',
        ),
      ],
    );
  }

  Widget _messengerWidget(BuildContext context) {
    return Column(
      children: [
        hSizedBox15,
        ListTileWidget(
          title: "Alfredo Calzoni",
          subTitle: "What about that new jacket if I\n...",
          image: Assets.alfredoCalzoni,
          icon: Icons.circle,
          time: "09:18",
          onTap: () {},
        ),
        _divider(),
        ListTileWidget(
          title: "Clara Hazel",
          subTitle: "I know right 😉",
          image: Assets.claraHazel,
          icon: Icons.circle,
          time: "12:44",
          onTap: () {},
        ),
        _divider(),
        ListTileWidget(
          title: "Brandon Aminoff",
          subTitle: "I've already registered,can't \nwai...",
          image: Assets.james,
          icon: Icons.circle,
          time: "08:06",
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatScreen(),));
          },
        ),
        _divider(),
        ListTileWidget(
          title: "Amina Mina",
          subTitle: "It will have two lines of heading\n...",
          image: Assets.aminaMina,
          time: "09:32",
          onTap: () {},
        ),
        _divider(),
        ListTileWidget(
          title: "Savanna Hall",
          subTitle: "It will have two lines of heading",
          image: Assets.savannaHall,
          time: "06:21",
          onTap: () {},
        ),
        _divider(),
      ],
    );
  }

  Widget _divider() {
    return Divider(
      indent: AppPadding.p25,
      endIndent: AppPadding.p25,
      color: ColorConstants.blackColor.withOpacity(0.1),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/colors.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/fonts.dart';
import 'package:love_finity/src/core/constants/styles.dart';
import 'package:love_finity/src/core/constants/values.dart';
import 'package:love_finity/src/features/matches/presentation/widgets/button_widget.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  double _currentSilentValue = 20;
  RangeValues values = const RangeValues(0.1, 0.3);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.only(
                  top: AppPadding.p10, bottom: AppPadding.p10),
              decoration: BoxDecoration(
                color: ColorConstants.lightGreyColor.withOpacity(0.4),
                shape: BoxShape.rectangle,
                borderRadius:
                    const BorderRadius.all(Radius.circular(AppSize.s12)),
              )),
        )),
        hSizedBox10,
        Text(
          'Apply filters',
          style: getSemiBoldStyle(
              color: ColorConstants.blackColor, fontSize: FontSize.s20),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: AppPadding.p26, top: AppPadding.p10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Interested in',
              style: getSemiBoldStyle(
                  color: ColorConstants.blackColor, fontSize: FontSize.s16),
            ),
          ),
        ),
        hSizedBox4,
        _radioButton(),
        hSizedBox4,
        _divider(),
        hSizedBox4,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: AppPadding.p26),
                child: Text(
                  'Location',
                  style: getMediumStyle(
                      color: ColorConstants.blackColor, fontSize: FontSize.s18),
                )),
            Row(
              children: [
                Text(
                  'People nearby',
                  style: getRegularStyle(
                      color: ColorConstants.suvaGreyColor,
                      fontSize: FontSize.s14),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_right,
                      color: ColorConstants.radialRedColor,
                    ))
              ],
            ),
          ],
        ),
        hSizedBox6,
        _divider(),
        hSizedBox10,
        Padding(
          padding: const EdgeInsets.only(
              left: AppPadding.p26, right: AppPadding.p26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Distance',
                style: getMediumStyle(
                    color: ColorConstants.blackColor, fontSize: FontSize.s18),
              ),
              Text(
                '10 km',
                style: getRegularStyle(
                    color: ColorConstants.radialRedColor,
                    fontSize: FontSize.s15),
              ),
            ],
          ),
        ),
        _distanceSlider(),
        hSizedBox4,
        _divider(),
        hSizedBox10,
        Padding(
          padding: const EdgeInsets.only(
              left: AppPadding.p26, right: AppPadding.p26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Age',
                style: getMediumStyle(
                    color: ColorConstants.blackColor, fontSize: FontSize.s18),
              ),
              Text(
                '25 - 30',
                style: getRegularStyle(
                    color: ColorConstants.radialRedColor,
                    fontSize: FontSize.s14),
              ),
            ],
          ),
        ),
        _ageSlider(),
        hSizedBox6,
        _divider(),
        hSizedBox10,
        Padding(
          padding: const EdgeInsets.only(
              left: AppPadding.p26, right: AppPadding.p26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Online now',
                style: getMediumStyle(
                    color: ColorConstants.blackColor, fontSize: FontSize.s18),
              ),
              SizedBox(
                width: 40,
                child: FittedBox(
                  child: Switch(
                    activeTrackColor: ColorConstants.pinkColor,
                    inactiveTrackColor: ColorConstants.lightGreyColor,
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
              ),
            ],
          ),
        ),
        hSizedBox15,
        _divider(),
        hSizedBox20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButtonWidget(
              text: 'Reset',
              backgroundColor: ColorConstants.lavenderBlushColor,
              onPressed: () {},
              color: ColorConstants.pinkColor,
            ),
            ElevatedButtonWidget(
              text: 'Apply',
              backgroundColor: ColorConstants.pinkColor,
              onPressed: () {},
              color: ColorConstants.whiteColor,
            ),
          ],
        ),
      ],
    );
  }

  Widget _radioButton() {
    return Padding(
      padding:
          const EdgeInsets.only(left: AppPadding.p10, right: AppPadding.p28),
      child: Row(
        children: [
          Row(
            children: [
              Radio(
                value: 1,
                groupValue: 0,
                onChanged: (value) {},
                fillColor:
                    WidgetStatePropertyAll(ColorConstants.suvaGreyColor),
              ),
              Text(
                'Men',
                style: getRegularStyle(
                    color: ColorConstants.suvaGreyColor,
                    fontSize: FontSize.s16),
              )
            ],
          ),
          wSizedBox40,
          Row(
            children: [
              CircleAvatar(
                radius: 11,
                backgroundColor: ColorConstants.pinkColor,
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: ColorConstants.whiteColor,
                ),
              ),
              wSizedBox15,
              Text(
                'Woman',
                style: getRegularStyle(
                    color: ColorConstants.suvaGreyColor,
                    fontSize: FontSize.s16),
              )
            ],
          ),
          wSizedBox50,
          Row(
            children: [
              Radio(
                value: 3,
                groupValue: 2,
                onChanged: (value) {},
                fillColor:
                    WidgetStatePropertyAll(ColorConstants.suvaGreyColor),
              ),
              Text(
                'Both',
                style: getRegularStyle(
                    color: ColorConstants.suvaGreyColor,
                    fontSize: FontSize.s16),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _distanceSlider() {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        thumbShape: const RoundSliderThumbShape(
          enabledThumbRadius: 6,
        ),
        trackHeight: 4,
      ),
      child: Slider(
        activeColor: ColorConstants.radialRedColor,
        value: _currentSilentValue,
        onChanged: (double value) {
          setState(() {
            _currentSilentValue = value;
          });
        },
        max: 60,
        label: _currentSilentValue.round().toString(),
      ),
    );
  }

  Widget _ageSlider() {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        rangeThumbShape: const RoundRangeSliderThumbShape(
          enabledThumbRadius: 6,
        ),
        trackHeight: 4,
      ),
      child: RangeSlider(
        activeColor: ColorConstants.radialRedColor,
        labels: labels,
        values: values,
        onChanged: (newValue) {
          setState(() {
            values = newValue;
          });
        },
      ),
    );
  }

  Widget _divider() {
    return Divider(
      color: ColorConstants.lightGreyColor.withOpacity(0.5),
      endIndent: AppPadding.p30,
      indent: AppPadding.p20,
    );
  }
}

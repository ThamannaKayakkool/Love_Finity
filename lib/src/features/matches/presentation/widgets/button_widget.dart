import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/fonts.dart';
import 'package:love_finity/src/core/constants/styles.dart';
import 'package:love_finity/src/core/constants/values.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color color;
  void Function() onPressed;

  ElevatedButtonWidget(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.onPressed,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 55,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(backgroundColor),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s40))),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: getSemiBoldStyle(color: color, fontSize: FontSize.s16),
          )),
    );
  }
}

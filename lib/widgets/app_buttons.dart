import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mountain/widgets/app_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  bool? isIcon;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  AppButtons(
      {Key? key,
      this.text = "hi",
      this.isIcon = false,
      this.icon,
      required this.size,
      required this.color,
      required this.backgroundColor,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade50),
      child: isIcon == false
          ? Center(
              child: AppText(
              text: text!,
              color: color,
              size: 10,
            ))
          : Center(
              child: Icon(
              icon,
              color: color,
            )),
    );
  }
}

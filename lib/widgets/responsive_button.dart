import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mountain/widgets/app_text.dart';


class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({Key ? key,
    this.width = 20,
    this.isResponsive,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
     /*child: Container(
        width: width,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.lightBlue
        ),*/
        child: Row(
          mainAxisAlignment: isResponsive == true?MainAxisAlignment.spaceBetween: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_circle,
              color: Colors.lightBlue,
              size: 50,
            ),
            AppText(text: "İlerle", color: Colors.white10),
           // SizedBox(width: 130,)
          ],
        ),

   /*   ),*/
    );
  }
}
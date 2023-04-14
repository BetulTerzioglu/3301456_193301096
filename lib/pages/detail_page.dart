import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mountain/widgets/app_buttons.dart';
import 'package:mountain/widgets/app_large_text.dart';
import 'package:mountain/widgets/app_text.dart';
import 'package:mountain/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int selected_index = -1;
  List boyut = ["Küçük", "Orta", "Büyük"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("img/black.jpg"), fit: BoxFit.cover),
                  ),
                )),
            Positioned(
                left: 20,
                top: 50,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    ),
                  ],
                )),
            Positioned(
                top: 333,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                  //  color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(190),
                          topRight: Radius.circular(190))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppLargeText(
                              text: "Yosemite",
                              color: Colors.lightBlue,
                            ),
                            AppLargeText(
                              text: "250 tl ",
                              color: Colors.blueGrey,
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.lightBlue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            AppText(text: "Kahve Dünyası"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Wrap(
                                children: List.generate(
                              5,
                              (index) {
                                return Icon(Icons.star,
                                    color: index < gottenStars
                                        ? Colors.yellow
                                        : Colors.black12);
                              },
                            )),
                            AppText(
                              text: "(5.0)",
                              color: Colors.blueAccent,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        AppLargeText(text: "Risteretto"),
                        SizedBox(
                          height: 10,
                        ),
                        AppText(text: "Hangi Boyut?"),
                        SizedBox(
                          height: 5,
                        ),
                        Wrap(
                          children: List.generate(3, (index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selected_index = index;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: AppButtons(
                                  size: 50,
                                  color: selected_index == index
                                      ? Colors.blue
                                      : Colors.black,
                                  backgroundColor: selected_index == index
                                      ? Colors.black12
                                      : Colors.grey,
                                  borderColor: selected_index == index
                                      ? Colors.blue
                                      : Colors.black,
                                  icon: Icons.coffee,
                                  isIcon: false,
                                  text: (boyut[index]).toString(),
                                ),
                              ),
                            );
                          }),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        AppLargeText(text: "Kahve İçeriği: "),
                        SizedBox(
                          height: 5,
                        ),
                        AppText(
                          text:
                              "Bir shot espresso ve köpüğün buluşmasıyla oluşan kahvemiz risteretto",
                        ),
                        SizedBox(
                          height: 5,
                        )
                      ]),
                )),
            Positioned(
                bottom: 30,
                right: 10,
                left: 420,
                child: Row(
                  children: [
                    AppButtons(
                      size: 50,
                      color: Colors.lightBlue,
                      backgroundColor: Colors.white10,
                      borderColor: Colors.grey,
                      isIcon: true,
                      icon: Icons.favorite_border,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ResponsiveButton(
                      isResponsive: true,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

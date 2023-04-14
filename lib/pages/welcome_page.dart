import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:mountain/widgets/app_large_text.dart';
import 'package:mountain/widgets/app_text.dart';
import 'package:mountain/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _State();
}

class _State extends State<WelcomePage> {
  List images = [
    "is_kadın.png",
    "is_adamı.png",
    "siparis.png",
    "calisan_kisiler.png",
    "kahve.png",
    "kahve_meditate.png",
    "kahve_tasiyan_biri.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: PageView.builder(
               scrollDirection : Axis.vertical ,
               itemCount:3,
               itemBuilder: (_, index){
                 return Container(
                   width: double.maxFinite,
                   height: double.maxFinite,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage(
                         "img/"+ images[index]
                       ),
                         //fit: BoxFit.cover
                     )
                   ),
                   child: Container(
                     margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                     child: Row(
                       children: [
                         Column(
                           crossAxisAlignment:  CrossAxisAlignment.start,
                           children: [
                             AppLargeText(text:  "Kahve Dünyasına Hoşgeldiniz"),
                             AppText(text:"Yeni Lezzetleri Keşfetmeye Var mısınız ?",size: 15,color: Colors.blue ,),
                             SizedBox(height: 20,),
                             Container(
                               width: 250,
                               child: AppText(
                                 text: "Brezilyadan Gelen Çekirdekler ile taze kavrulan kahve keyfi",size: 12,
                               ),
                             ),
                             SizedBox(height: 30,),
                             ResponsiveButton()

                           ],
                         ),
                         Column(
                           children: List.generate(3, (indexDots){
                             return Container(
                               margin: const EdgeInsets.only(bottom:2),
                               width: 8,
                               height: index == indexDots? 25 : 8,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(200),
                                 color: index == indexDots?Colors.lightBlue: Colors.lightBlue.withOpacity(0.3)
                               ),
                             );
                           }),
                         )
                       ],
                     ),
                   ),
                 );

      }),
    );
  }
}

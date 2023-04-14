import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mountain/widgets/app_large_text.dart';
import 'package:mountain/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
var images  ={
  "is_kadın.png" : "take break",
  "is_adamı.png" : "breath",
  "siparis.png" : "Sipariş",
  "calisan_kisiler.png" : "Working"
};

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // kutu profil göstergesi
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30, color: Colors.black54),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // YENİ LEZZETLER KEŞFET TEXT CONTAİNER
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeText(text: "Yeni Lezzetler Keşfet"),
          ),
          SizedBox(
            height: 30,
          ),
          //TABBAR
          Container(
            child: Align(
              alignment: Alignment.center,
              child: TabBar(
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator:
                    CircleTabIndicator(color: Colors.blueAccent, radius: 4),
                tabs: [
                  Tab(
                    text: "Yerler",
                  ),
                  Tab(
                    text: "Kahveler",
                  ),
                  Tab(
                    text: "Tatlılar",
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 150,
            // eğer yüksekliği fazla verirsen pixel hatası ile karşılaşırsın.
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 15, top: 10),
                      width: 100,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          //fotoğrafı buraya ekliyoruz.
                          image: DecorationImage(
                            image: AssetImage("img/kahve.png"),
                            //box dekorasyna tam uyması için yapılır.
                            // fit: BoxFit.cover,
                          )),
                    );
                  },
                ),
                Text("hi"),
                Text("there"),
                Text("bye")
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLargeText(text: "Daha Fazlası"),
                AppText(
                  text: "Kaydırın",
                  color: Colors.black45,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 30,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 20),
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 40),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              // margin: const EdgeInsets.only(right: 50),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  //fotoğrafı buraya ekliyoruz.
                                  image: DecorationImage(
                                    image: AssetImage("img/"+ images.keys.elementAt(index)),
                                    //box dekorasyna tam uyması için yapılır.
                                     fit: BoxFit.cover,
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: AppText(
                                text: images.values.elementAt(index),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2, configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
    // TODO: implement paint
  }
}

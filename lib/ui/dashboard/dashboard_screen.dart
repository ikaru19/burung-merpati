import 'package:burung_merpati/utils/v_color.dart';
import 'package:burung_merpati/utils/v_navigation.dart';
import 'package:burung_merpati/widgets/v_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _current = 0;
  List<String> testList = List();

  @override
  void initState() {
    testList.add("1");
    testList.add("1");
    testList.add("1");
    testList.add("1");
    testList.add("1");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return Stack(
      children: [
        Positioned(
          child: SvgPicture.asset("assets/image/top_dashboard.svg"),
        ),
        mainDasbBoard(),
      ],
    );
  }

  Widget mainDasbBoard() {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              VText(
                "Selamat Datang, \nHildan",
                fontSize: 24,
                maxLines: 2,
                color: Colors.white,
              ),
              SizedBox(width: 80),
              Icon(
                Icons.notifications_none,
                size: 24,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(height: 41),
          CarouselSlider(
            items: testList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return CarouselItem();
                },
              );
            }).toList(),
            options: CarouselOptions(
                enlargeCenterPage: false,
                viewportFraction: 1.0,
                autoPlay: true,
                height: 141,
                enableInfiniteScroll: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          SizedBox(height: 17),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: testList.map((item) {
                int index = testList.indexOf(item);
                print(index);
                return Container(
                  width: _current == index ? 25.0 : 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: _current == index
                        ? VColor.indicatorColor.withOpacity(0.7)
                        : VColor.indicatorColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 10),
          VText(
            "Menu Utama",
            color: Colors.black,
            fontSize: 19,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  VNavigation.toHasil(context);
                },
                child: GridViewItem("Hasil", "assets/image/hasil_icon.png"),
              ),
              InkWell(
                onTap: () {
                  VNavigation.toLomba(context);
                },
                child: GridViewItem("Lomba", "assets/image/lomba_icon.png"),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GridViewItem("Burung", "assets/image/burung_icon.png"),
              GridViewItem("Pengaturan", "assets/image/setting_icon.png")
            ],
          )
        ],
      ),
    );
  }
}

class GridViewItem extends StatelessWidget {
  String assetImage;
  String text;

  GridViewItem(this.text, this.assetImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            assetImage,
          ),
          VText(
            text,
            fontSize: 19,
          )
        ],
      ),
    );
  }
}

class CarouselItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VText(
                        "Pengumuman Juara",
                        fontSize: 22,
                      ),
                      VText(
                        "Lomba Balap Burung Merpati JATIM EXPO 2020",
                        fontSize: 12,
                      ),
                    ],
                  ),
                  VText(
                    "Selengkapnya",
                    fontSize: 9,
                    color: VColor.indicatorColor,
                  )
                ],
              ),
            ),
            SizedBox(width: 20),
            Container(
              height: 20,
              width: 50,
              color: Colors.orange,
            )
          ],
        ));
  }
}

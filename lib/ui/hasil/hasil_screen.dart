import 'package:burung_merpati/utils/v_color.dart';
import 'package:burung_merpati/widgets/v_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HasilScreen extends StatefulWidget {
  @override
  _HasilScreenState createState() => _HasilScreenState();
}

class _HasilScreenState extends State<HasilScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: VText(
            "Hasil",
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: VColor.indicatorColor,
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: TabBar(
            tabs: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: VText(
                  "Merpati Ticker",
                  color: VColor.indicatorColor,
                ),
              ),
              VText(
                "Penerbangan Burung",
                color: VColor.indicatorColor,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _merpatiTicker(),
            Icon(Icons.directions_transit),
          ],
        ),
      ),
    );
  }

  Widget _merpatiTicker() {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, i) => _cardListTicker(),
      ),
    );
  }

  Widget _cardListTicker() {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                VText(
                  "Merpati Surabaya",
                  fontSize: 20,
                  bold: true,
                ),
                VText(
                  "08 : 30",
                  color: Color(0xff5465FF),
                )
              ],
            ),
            SizedBox(height: 10),

            VText(
              "No Peserta : 156",
              fontSize: 16,
              color: VColor.greyText,
            ),
            SizedBox(height: 20),
            VText(
              "20/10/2020",
              color: VColor.greyText,
            ),

          ],
        ),
      ),
    );
  }
}

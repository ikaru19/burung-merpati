import 'package:burung_merpati/utils/v_color.dart';
import 'package:burung_merpati/widgets/v_widget.dart';
import 'package:flutter/material.dart';

class LombaLiveScreen extends StatefulWidget {
  @override
  _LombaLiveScreenState createState() => _LombaLiveScreenState();
}

class _LombaLiveScreenState extends State<LombaLiveScreen> {
  bool isOpen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VAppBar(
        title: "Hasil",
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(10),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/image/thropy.png",
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VText(
                        "Jawara Merpati Balap Jatim",
                        fontSize: 21,
                        maxLines: 2,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: VColor.greyText,
                            size: 12,
                          ),
                          VText(
                            "Lap. Kodam V Brawijaya",
                            fontSize: 12,
                            color: VColor.greyText,
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                          ),
                          child: VText(
                            "Sedang Berlangsung",
                            fontSize: 12,
                            color: Colors.red,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              setState(() {
                isOpen = !isOpen;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                VText(
                  "Rank",
                  fontSize: 19,
                ),
                Icon(
                  isOpen
                      ? Icons.keyboard_arrow_up_outlined
                      : Icons.keyboard_arrow_down,
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          if (isOpen)
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, i) => _cardListHasil(),
            ),
        ],
      ),
    );
  }

  Widget _cardListHasil() {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
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
              children: [
                VText(
                  "#1",
                  fontSize: 20,
                  bold: true,
                  color: VColor.oneColor,
                ),
                SizedBox(width: 5),
                VText(
                  "Merpati Surabaya",
                  fontSize: 20,
                  bold: true,
                ),
              ],
            ),
            SizedBox(height: 10),
            VText(
              "No Peserta : 150",
              color: VColor.greyText,
            ),
            VText(
              "Perolehan waktu : 4 menit 36 detik",
              color: VColor.greyText,
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.bottomRight,
              child: VText(
                "99 Points",
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}

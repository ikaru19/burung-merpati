import 'package:burung_merpati/utils/v_color.dart';
import 'package:burung_merpati/utils/v_navigation.dart';
import 'package:burung_merpati/widgets/v_widget.dart';
import 'package:flutter/material.dart';

class LombaScreen extends StatefulWidget {
  @override
  _LombaScreenState createState() => _LombaScreenState();
}

class _LombaScreenState extends State<LombaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VAppBar(
        title: "Lomba",
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, i) => _cardListLomba(),
      ),
    );
  }

  Widget _cardListLomba() {
    return InkWell(
      onTap: (){
        VNavigation.toLombaLive(context);
      },
      child: Container(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VText(
              "Jawara Merpati Balap Jatim",
              fontSize: 20,
              bold: true,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.location_pin,
                  color: VColor.greyText,
                ),
                VText(
                  "Lap. Kodam V Brawijaya",
                  fontSize: 16,
                  color: VColor.greyText,
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                VText(
                  "273 Sedang Menonton",
                  color: VColor.greyText,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                  child: VText(
                    "Sedang Berlangsung",
                    fontSize: 12,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

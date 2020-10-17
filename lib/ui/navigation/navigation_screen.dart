import 'package:burung_merpati/ui/dashboard/dashboard_screen.dart';
import 'package:burung_merpati/ui/profile/profile_screen.dart';
import 'package:burung_merpati/utils/v_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  final int indexTab;

  NavigationScreen(this.indexTab);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentIndex = 0;
  List<Widget> _widgetOptions = <Widget>[];

  @override
  void initState() {
    _widgetOptions.add(DashboardScreen());
    _widgetOptions.add(ProfileScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(

      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(child: _widgetOptions[currentIndex]),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            decoration: BoxDecoration(
              color: VColor.backgroudColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            height: 91,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    onTap: () {
                      currentIndex = 0;
                      setState(() {});
                    },
                    child: ItemMenu(
                      isActiveTab: currentIndex == 0,
                      title: "BERANDA",
                      Icondata: Icons.dashboard,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      currentIndex = 1;
                      setState(() {});
                    },
                    child: ItemMenu(
                      isActiveTab: currentIndex == 1,
                      title: "PROFIL",
                      Icondata: Icons.account_box,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //to add a space between the FAB and BottomAppBar
        ),
      ),
    );
  }
}

class ItemMenu extends StatelessWidget {
  final bool isActiveTab;
  final IconData Icondata;
  final String title;

  ItemMenu(
      {@required this.isActiveTab,
      @required this.Icondata,
      @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 5),
          Icon(
            Icondata,
            size: 25,
            color: isActiveTab ? Colors.black : VColor.grey,
          ),
        ],
      ),
    );
  }
}

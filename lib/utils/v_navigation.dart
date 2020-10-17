import 'package:burung_merpati/ui/dashboard/dashboard_screen.dart';
import 'package:burung_merpati/ui/hasil/hasil_screen.dart';
import 'package:burung_merpati/ui/lomba/lomba_live_screen.dart';
import 'package:burung_merpati/ui/lomba/lomba_screen.dart';
import 'package:flutter/material.dart';

class VNavigation {
  static toLomba(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LombaScreen()));
  }

  static toLombaLive(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LombaLiveScreen()));
  }

  static toHasil(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HasilScreen()));
  }
}

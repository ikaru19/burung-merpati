import 'package:burung_merpati/utils/v_color.dart';
import 'package:flutter/material.dart';

class VText extends StatelessWidget {
  final String title;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextOverflow overflow;
  final TextAlign align;
  final bool number;
  final bool bold;
  final TextDecoration decoration;
  final int maxLines;

  VText(this.title,
      {this.color,
      this.fontSize,
      this.fontWeight,
      this.overflow,
      this.align,
      this.number = false,
      this.bold = false,
      this.decoration,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: bold ? "robotoBold" : "poppinsRegular",
        color: color ?? Colors.black,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
      overflow: overflow ?? TextOverflow.fade,
      textAlign: align ?? TextAlign.left,
      maxLines: maxLines,
    );
  }
}

class VAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackPressed;
  final Color backgroundColor;
  final Color titleColor;
  final bool bold;

  VAppBar(
      {this.title,
      @required this.onBackPressed,
      this.backgroundColor,
      this.titleColor,
      this.bold});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.white,
      centerTitle: true,
      title: VText(
        title ?? "",
        bold: bold ?? false,
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: titleColor ?? VColor.indicatorColor,
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(47.8);
}

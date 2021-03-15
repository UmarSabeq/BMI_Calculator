import 'package:flutter/material.dart';

class OurCard extends StatelessWidget {
  OurCard({@required this.clr, this.cardChild});
  final Color clr;
  final cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: clr, borderRadius: BorderRadius.circular(10)),
    );
  }
}

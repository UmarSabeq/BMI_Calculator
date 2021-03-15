import 'package:flutter/material.dart';

class InCard extends StatelessWidget {
  InCard({@required this.iconName, @required this.sex});
  final IconData iconName;
  final String sex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          sex,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}

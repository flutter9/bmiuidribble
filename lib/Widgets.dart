import 'package:flutter/material.dart';

class Card_detail extends StatelessWidget {
  final String Lable;
  final IconData iconname;

  Card_detail({@required this.iconname, @required this.Lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconname,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          Lable,
          style: TextStyle(color: Color(0xFF8D8E98), fontSize: 18.0),
        )
      ],
    );
  }
}

class Card_bmi extends StatelessWidget {
  final Color Card_color;
  final Widget Card_child;
  final Function Onpressed;

  Card_bmi({@required this.Card_color, this.Card_child, this.Onpressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Onpressed,
      child: Container(
        child: Card_child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Card_color, borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }
}

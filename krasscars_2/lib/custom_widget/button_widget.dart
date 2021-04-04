import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key key,
        @required this.color,
        @required this.shadowColor,
        @required this.text,
        @required this.onPressed, this.width})
      : super(key: key);

  final Color color;
  final Color shadowColor;
  final Text text;
  final VoidCallback onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: width,
      decoration: BoxDecoration(
        boxShadow:[
          BoxShadow(
            color:shadowColor !=null?this.shadowColor.withOpacity(0.5):color.withOpacity(0.5), //color of shadow
            spreadRadius: 2, //spread radius
            blurRadius: 5, // blur radius
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: this.onPressed,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        color: this.color,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(5),
        ),
        //shape: StadiumBorder(),
        child: this.text,
      ),
    );
  }
}
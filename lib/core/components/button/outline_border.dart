import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomOutlineBorder extends StatelessWidget {
  final String buttonText;
  final Color color;

  const CustomOutlineBorder(
      {Key? key, required this.buttonText, this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(1),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              width: 2,
              color: color,
              style: BorderStyle.solid,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          onPressed: () {},
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}

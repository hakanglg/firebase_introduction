import 'package:flutter/material.dart';

import '../../../core/components/divider/custom_divider.dart';

class BuildRegisterSection extends StatelessWidget {
  final String text;

  const BuildRegisterSection({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomDivider(),
        Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        CustomDivider()
      ],
    );
  }
}

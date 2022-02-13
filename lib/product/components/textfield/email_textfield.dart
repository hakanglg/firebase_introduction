import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/components/text_field/custom_text_field.dart';

class PasswordTextFieldSection extends StatelessWidget {
  const PasswordTextFieldSection({
    Key? key,
    required this.mailController,
  }) : super(key: key);

  final TextEditingController mailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        hide: true,
        controller: mailController,
        icon: FontAwesomeIcons.key,
        hintText: "Password");
  }
}
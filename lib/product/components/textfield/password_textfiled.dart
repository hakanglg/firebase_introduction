import 'package:flutter/material.dart';

import '../../../core/components/text_field/custom_text_field.dart';

class EmailTextFieldSection extends StatelessWidget {
  const EmailTextFieldSection({
    Key? key,
    required this.mailController,
  }) : super(key: key);

  final TextEditingController mailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        keyboardType: TextInputType.emailAddress,
        controller: mailController,
        icon: Icons.mail,
        hintText: "Email");
  }
}

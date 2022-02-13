import 'package:flutter/material.dart';

import '../../../core/components/button/outline_border.dart';

class BuildLoginButtonSection extends StatelessWidget {
  const BuildLoginButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomOutlineBorder(
      buttonText: "Giriş Yap",
    );
  }
}

import 'package:firebase_introduction/core/components/column/my_column.dart';
import 'package:firebase_introduction/core/components/row/my_row.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../product/components/button/login_button_section.dart';
import '../../product/components/button/register_divider_button.dart';
import '../../product/components/textfield/email_textfield.dart';
import '../../product/components/textfield/password_textfiled.dart';

class LoginView extends StatelessWidget {
  final TextEditingController mailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: context.dynamicWidth(.85),
            height: context.dynamicHeight(.7),
            decoration: buildCustomBoxDecoration(),
            child: MyRow(
              child: MyColumn(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                        flex: 4,
                        child: EmailTextFieldSection(
                            mailController: mailController)),
                    Expanded(
                        flex: 4,
                        child: PasswordTextFieldSection(
                            mailController: mailController)),
                    context.emptySizedHeightBoxNormal,
                    const Expanded(
                      flex: 3,
                      child: BuildLoginButtonSection(),
                    ),
                    context.emptySizedHeightBoxLow,
                    const Expanded(
                      flex: 2,
                      child: BuildRegisterSection(
                        text: "Kayıt Ol",
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }

  // add this section to theme
  BoxDecoration buildCustomBoxDecoration() {
    return BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset.zero,
              blurStyle: BlurStyle.normal)
        ]);
  }
}

import 'package:flutter/material.dart';
import 'package:green_food/screens/Catalog/index.dart';
import 'package:green_food/widgets/styled_button.dart';
import 'package:green_food/screens/auth/widgets/styled_text_form_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StyledSignInForm extends StatefulWidget {
  const StyledSignInForm({super.key, required this.buttonText});
  final String buttonText;
  @override
  State<StyledSignInForm> createState() => _StyledSignInFormState();
}

class _StyledSignInFormState extends State<StyledSignInForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    const iconSize = 20.0;

    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const StyledTextFormField(
                labelText: "email",
                type: "email",
                icon: FaIcon(
                  FontAwesomeIcons.envelopesBulk,
                  size: iconSize,
                )),
            const StyledTextFormField(
                labelText: "password",
                obscureText: true,
                autocorrect: false,
                enableSuggestions: false,
                icon: FaIcon(
                  FontAwesomeIcons.userLock,
                  size: iconSize,
                )),
            StyledFilledButton(
              title: widget.buttonText,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Catalog()));
                }
              },
            ),
          ],
        ));
  }
}

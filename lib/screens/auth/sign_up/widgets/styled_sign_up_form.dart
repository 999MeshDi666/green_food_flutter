import 'package:flutter/material.dart';
import 'package:green_food/screens/Catalog/index.dart';
import 'package:green_food/widgets/styled_filled_button.dart';
import 'package:green_food/screens/auth/widgets/styled_text_form_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StyledSignUpForm extends StatefulWidget {
  const StyledSignUpForm({super.key, required this.buttonText});
  final String buttonText;
  @override
  State<StyledSignUpForm> createState() => _StyledSignUpFormState();
}

class _StyledSignUpFormState extends State<StyledSignUpForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    const iconSize = 20.0;
    return Form(
        key: _formKey,
        child: Column(
          children: [
            const StyledTextFormField(
              labelText: "username",
              icon: FaIcon(
                FontAwesomeIcons.userLarge,
                size: iconSize,
              ),
            ),
            const StyledTextFormField(
                labelText: "email",
                icon: FaIcon(
                  FontAwesomeIcons.envelopesBulk,
                  size: iconSize,
                )),
            const StyledTextFormField(
                labelText: "password",
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

import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_filled_button.dart';
import 'package:green_food/screens/auth/widgets/styled_text_form_field.dart';

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
    return Form(
        key: _formKey,
        child: Column(
          children: [
            const StyledTextFormField(
              labelText: "username",
            ),
            const StyledTextFormField(
              labelText: "email",
            ),
            const StyledTextFormField(
              labelText: "password",
            ),
            StyledFilledButton(
              title: widget.buttonText,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print("submitted");
                }
              },
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:green_food/screens/Catalog/index.dart';
import 'package:green_food/widgets/styled_filled_button.dart';
import 'package:green_food/screens/auth/widgets/styled_text_form_field.dart';

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
    return Form(
        key: _formKey,
        child: Column(
          children: [
            const StyledTextFormField(
              labelText: "username",
            ),
            const StyledTextFormField(
              labelText: "password",
            ),
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

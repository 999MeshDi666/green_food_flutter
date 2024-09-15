import 'package:flutter/material.dart';
import 'package:green_food/screens/main/index.dart';
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
              backgroundColor: const Color.fromRGBO(65, 112, 67, 1),
              color: const Color.fromRGBO(255, 255, 255, 1),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Main()));
                }
              },
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_filled_button.dart';

class StyledTextFormField extends StatefulWidget {
  const StyledTextFormField({super.key});

  @override
  State<StyledTextFormField> createState() => _StyledTextFormFieldState();
}

class _StyledTextFormFieldState extends State<StyledTextFormField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28),
      child: TextFormField(
        controller: _controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Required field";
          }
          return null;
        },
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: const InputDecoration(
            filled: true,
            fillColor: Color.fromRGBO(65, 112, 67, 1),
            labelStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(36, 70, 39, 1)),
            ),
            labelText: "username"),
      ),
    );
  }
}

class StyledForm extends StatefulWidget {
  const StyledForm({super.key});

  @override
  State<StyledForm> createState() => _StyledFormState();
}

class _StyledFormState extends State<StyledForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            const StyledTextFormField(),
            const StyledTextFormField(),
            StyledFilledButton(
              title: "Sign in",
              backgroundColor: const Color.fromRGBO(65, 112, 67, 1),
              color: const Color.fromRGBO(255, 255, 255, 1),
              onPressed: () {
                print("nav to the main page");
              },
            ),
          ],
        ));
  }
}

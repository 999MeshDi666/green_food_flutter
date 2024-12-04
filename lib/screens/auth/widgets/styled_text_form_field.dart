import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:email_validator/email_validator.dart';

class StyledTextFormField extends StatefulWidget {
  const StyledTextFormField({
    super.key,
    required this.labelText,
    this.icon,
    this.obscureText = false,
    this.enableSuggestions = true,
    this.autocorrect = true,
    this.type = "text",
  });
  final String labelText;
  final FaIcon? icon;
  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;
  final String type;
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

  String? validator(value) {
    if (widget.type == "email") {
      return EmailValidator.validate(value)
          ? null
          : "Please enter a valid email";
    } else {
      return value == null || value.isEmpty ? "Required field" : null;
    }
  }

  @override
  Widget build(BuildContext context) {
    const mateBlack = Color.fromRGBO(70, 70, 70, 1);

    return Padding(
      padding: const EdgeInsets.only(bottom: 28),
      child: TextFormField(
        controller: _controller,
        validator: validator,
        cursorErrorColor: mateBlack,
        obscureText: widget.obscureText,
        enableSuggestions: widget.enableSuggestions,
        autocorrect: widget.autocorrect,
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: widget.icon,
            ),
            prefixIconColor: mateBlack,
            errorStyle: const TextStyle(color: Color.fromARGB(255, 118, 0, 0)),
            filled: true,
            fillColor: const Color.fromRGBO(233, 233, 233, 1),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(36, 70, 39, 1)),
            ),
            labelStyle: const TextStyle(color: mateBlack),
            labelText: widget.labelText),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StyledTextFormField extends StatefulWidget {
  const StyledTextFormField(
      {super.key,
      required this.labelText,
      this.helperText = "Required field",
      this.icon});
  final String labelText;
  final String helperText;
  final FaIcon? icon;

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
    const mateBlack = Color.fromRGBO(70, 70, 70, 1);
    return Padding(
      padding: const EdgeInsets.only(bottom: 28),
      child: TextFormField(
        controller: _controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return widget.helperText;
          }
          return null;
        },
        cursorErrorColor: mateBlack,
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: widget.icon,
            ),
            prefixIconColor: mateBlack,
            errorStyle: const TextStyle(color: Color.fromARGB(255, 156, 10, 0)),
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

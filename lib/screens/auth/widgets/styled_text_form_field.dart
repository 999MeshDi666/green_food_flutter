import 'package:flutter/material.dart';

class StyledTextFormField extends StatefulWidget {
  const StyledTextFormField(
      {super.key, required this.labelText, this.helperText = "Required field"});
  final String labelText;
  final String helperText;

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
            return widget.helperText;
          }
          return null;
        },
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromRGBO(65, 112, 67, 1),
            labelStyle: const TextStyle(color: Colors.white),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(36, 70, 39, 1)),
            ),
            labelText: widget.labelText),
      ),
    );
  }
}

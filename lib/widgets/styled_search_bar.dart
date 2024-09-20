import 'package:flutter/material.dart';

class StyledSearchBar extends StatelessWidget {
  const StyledSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          prefixIcon: const Icon(Icons.search),
          filled: true,
          fillColor: const Color.fromRGBO(233, 233, 233, 1),
          labelStyle: const TextStyle(color: Colors.black),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(36, 70, 39, 1)),
          ),
          labelText: "Search"),
    );
  }
}

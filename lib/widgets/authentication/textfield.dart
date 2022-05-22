import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  // ignore: use_key_in_widget_constructors
  const CustomTextField({
    required this.label,
    required this.controller,
    required this.keyboardType,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool passenable = true;

  @override
  Widget build(BuildContext context) {
    return widget.keyboardType == TextInputType.visiblePassword
        ? TextField(
            obscureText: passenable,
            decoration: InputDecoration(
                isDense: true,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                labelText: widget.label,
                labelStyle: const TextStyle(
                  color: Color(0xFFA1A1A1),
                ),
                suffix: widget.keyboardType == TextInputType.visiblePassword
                    ? IconButton(
                        onPressed: () {
                          //add Icon button at end of TextField
                          setState(() {
                            //refresh UI
                            if (passenable) {
                              //if passenable == true, make it false
                              passenable = false;
                            } else {
                              passenable =
                                  true; //if passenable == false, make it true
                            }
                          });
                        },
                        icon: Icon(passenable == true
                            ? Icons.remove_red_eye
                            : Icons.password))
                    : null),
            controller: widget.controller,
            keyboardType: widget.keyboardType,
          )
        : TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(),
              hintText: widget.label,
              labelStyle: const TextStyle(
                color: Color(0xFFA1A1A1),
              ),
            ),
            controller: widget.controller,
            keyboardType: widget.keyboardType,
          );
  }
}

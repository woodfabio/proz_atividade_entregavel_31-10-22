import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustTextFormField extends StatelessWidget {
  
  final String label;
  final bool enabled; 
  final bool autofocus;
  final bool autocorrect;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;

  const CustTextFormField({
    Key? key,
    required this.label,
    this.enabled = true,
    this.autofocus = false,
    this.autocorrect = false,
    this.textInputAction,
    this.textInputType,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: autofocus,
      autocorrect: autocorrect,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        label: Text(label),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0))
          ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
          borderSide: BorderSide(
            width: 2.0,
            color: Colors.orange, ),
          ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
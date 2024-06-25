import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final int? maxlines;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  const SearchBar(
      {Key? key,
      required this.text,
      this.maxlines,
      required this.controller,
      this.suffixIcon,
      this.keyboardType,
      this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
      keyboardType: keyboardType,
      maxLines: maxlines,
      autofillHints: const [
        AutofillHints.username,
        AutofillHints.password,
        AutofillHints.email,
        AutofillHints.telephoneNumber
      ],
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        // fillColor: const Color(AppColors.fillColor),
        filled: true,
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 5),
          child: Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
        ),

        // maxLines: maxlines,

        hintText: text,
        hintStyle: const TextStyle(color: Colors.white,fontSize: 16),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: const Color(0xffFFFFFF).withOpacity(0.3), width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: const Color(0xffFFFFFF).withOpacity(0.3), width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: const Color(0xffFFFFFF).withOpacity(0.3), width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}

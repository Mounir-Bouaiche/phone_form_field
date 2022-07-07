import 'package:flutter/material.dart';

class SearchBoxDecoration extends InputDecoration {
  const SearchBoxDecoration({
    bool? filled,
    bool? isDense,
    Icon? prefixIcon,
    Color? prefixIconColor,
    InputBorder? border,
    String? hint,
    TextStyle? hintStyle,
  }) : super(
          hintText: hint,
          hintStyle: hintStyle,
          filled: filled ?? true,
          isDense: isDense ?? true,
          prefixIcon: prefixIcon ?? const Icon(Icons.search),
          prefixIconColor: prefixIconColor,
          border: border ??
              const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
        );
}

class SearchBox extends StatelessWidget {
  final Function(String) onChanged;
  final bool autofocus;
  final InputDecoration? decoration;
  final TextStyle? style;

  const SearchBox({
    Key? key,
    required this.onChanged,
    required this.autofocus,
    this.decoration,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: TextField(
        autofocus: autofocus,
        onChanged: onChanged,
        decoration: decoration,
        style: style,
      ),
    );
  }
}

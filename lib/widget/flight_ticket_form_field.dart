import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';

class FlightTicketFormField extends StatelessWidget {
  final String hintText;
  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const FlightTicketFormField({
    super.key,
    required this.hintText,
    this.prefix,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: ThemeUtils.textFormFieldHintStyle,
          prefix: prefix,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          prefixIconColor: ThemeUtils.brandColor,
          isDense: true,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ThemeUtils.textFieldBorderColor,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';
import 'package:get/get.dart';

class FlightDateTimePicker extends StatelessWidget {
  const FlightDateTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.black.withOpacity(0.35),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Icon(
                Icons.calendar_month,
                size: 15,
                color: ThemeUtils.brandColor,
              ),
              SizedBox(
                width: 15,
              ),

              ///ToDo :: Pick Date
              Text(
                "Sun,12 Jun 2023",
                style: ThemeUtils.textFormFieldHintStyle,
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              Get.dialog(
                DatePickerDialog(
                  initialDate: DateTime.now(),
                  firstDate: DateTime(DateTime.now().year - 100),
                  lastDate: DateTime(DateTime.now().year + 100),
                ),
              );
            },
            icon: const Icon(Icons.keyboard_arrow_down_outlined),
          ),
        ],
      ),
    );
  }
}

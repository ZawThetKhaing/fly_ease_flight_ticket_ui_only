import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';
import 'package:fly_ease_online_booking_app/widget/custom_text_form_field.dart';
import 'package:fly_ease_online_booking_app/widget/flight_detail_card.dart';
import 'package:get/get.dart';

class CustomerInformation extends StatelessWidget {
  const CustomerInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          splashRadius: 20,
          onPressed: Get.back,
          icon: const Icon(
            Icons.arrow_back,
            size: 24,
            color: ThemeUtils.brandColor,
          ),
        ),
        title: Text(
          ///ToDo : Avaliable Flights
          "Customer Information",
          style: ThemeUtils.loginTextStyle.copyWith(
            color: ThemeUtils.brandColor,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Text(
            "Flight detail",
            style: ThemeUtils.loginTextStyle
                .copyWith(color: ThemeUtils.homeRadioColor),
          ),
          const FlightDetailCard.withTotal(
            departureTime: "9:40 AM",
            departureDate: "12 Jun",
            estimateTravelTime: "1h 20m",
            flightType: "Direct flight",
            arrivalTime: "11:30 AM",
            arrivalDate: "12 Jun",
            flightLogo: "lib/assets/home/air_asia.png",
            companyName: "Thai Air Asia",
            ticketPrice: 108671,
            laggageDetails: "5kg hand-carry, 20kg baggage",
            totalPrice: 118587,
            index: 1,
          ),
          Text(
            "Contact information",
            style: ThemeUtils.loginTextStyle
                .copyWith(color: ThemeUtils.homeRadioColor),
          ),

          ///Contact Information Box
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const CustomTextFormField(hintText: "First Name"),
                const CustomTextFormField(hintText: "Last Name"),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1.5,
                          color: ThemeUtils.bottomNavigationBarColor
                              .withOpacity(0.6),
                        ),
                      ),
                      child: CountryCodePicker(
                        flagWidth: 32,
                        padding: const EdgeInsets.all(0),
                        showFlagDialog: true,
                        onChanged: (CountryCode vaule) {},
                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                        initialSelection: 'MM',
                        favorite: const ['+95', 'MM'],
                        // optional. Shows only country name and flag
                        showCountryOnly: false,
                        // optional. Shows only country name and flag when popup is closed.
                        showOnlyCountryWhenClosed: false,
                        // optional. aligns the flag and the Text left
                        alignLeft: false,
                      ),
                    ),
                    const Expanded(
                        child: CustomTextFormField(hintText: "Mobile Number")),
                  ],
                ),
                const CustomTextFormField(hintText: "Contact email"),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 30,
                        right: 10,
                      ),
                      width: 13.5,
                      height: 13.5,
                      child: Checkbox(
                        side: const BorderSide(color: ThemeUtils.brandColor),
                        activeColor: ThemeUtils.brandColor,
                        value: false,
                        onChanged: (a) {},
                      ),
                    ),
                    Text(
                      "I am also a passenger",
                      style: ThemeUtils.flightDestinationTextStyle.copyWith(
                        color: ThemeUtils.brandColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),

          /// Contact Information Box

          Text(
            "Passenger information",
            style: ThemeUtils.loginTextStyle
                .copyWith(color: ThemeUtils.homeRadioColor),
          ),

          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Column(
              children: [
                CustomTextFormField(hintText: "First Name"),
                CustomTextFormField(hintText: "Last Name"),
                CustomTextFormField(
                  hintText: "Date of birth",
                  suffixIcon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                  ),
                ),
                CustomTextFormField(
                  hintText: "Nationality",
                  suffixIcon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                  ),
                ),
                CustomTextFormField(
                  hintText: "Passport number",
                  suffixIcon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                  ),
                ),
                CustomTextFormField(
                  hintText: "Passport expiration",
                  suffixIcon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  ThemeUtils.brandColor,
                ),
              ),
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.payment_outlined,
                    size: 28,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Continue payment",
                    style: ThemeUtils.loginTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

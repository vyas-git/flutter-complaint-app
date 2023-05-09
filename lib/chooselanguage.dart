import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'constants/colors.dart';

class LanguageScreen extends StatelessWidget {
  final List<Map<String, dynamic>> languages = [
    {'ln': 'English', 'code': 'en'},
    {'ln': 'Soomaali', 'code': 'so'},
    {'ln': 'عربي', 'code': 'ar'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [kSecondaryColor, Colors.grey.shade500],
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(left: 25, right: 25),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/illustrations/language.png',
                      width: 200,
                      height: 200,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "screens.choose_language.title",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ).tr(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "screens.choose_language.subtitle",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ).tr(),
                    const SizedBox(
                      height: 30,
                    ),
                    DropdownButtonFormField(
                      items: languages
                          .map((language) => DropdownMenuItem(
                                value: language['code'],
                                child: Text(language['ln']),
                              ))
                          .toList(),
                      value: "en",
                      onChanged: (value) {
                        context.setLocale(value != "so"
                            ? Locale(value.toString())
                            : const Locale("en", "SO"));
                      },
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: kPrimaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            Navigator.pushNamed(context, 'phone');
                          },
                          child: Text(
                            "screens.choose_language.next_btn",
                          ).tr()),
                    )
                  ],
                ),
              ),
            )));
  }
}

import 'package:bmi_calculator/components/primary_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {this.value = 0,
      this.weightAlert = "MAGREZA",
      this.weightMessage =
          "O seu peso esta a baixo do normal, se alimente mais",
      super.key});
  final double value;
  final String weightAlert;
  final String weightMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Seu resultado",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: cscContainerColor,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(weightAlert,
                            style: weightAlert != "NORMAL"
                                ? tscNotNormalWeight
                                : tscNormalWeight),
                        Text(
                          value.toStringAsFixed(1),
                          style: tscBigNumberText,
                        ),
                        Text(
                          weightMessage,
                          style: tscMediumText,
                          textAlign: TextAlign.center,
                        )
                      ]),
                ),
              ),
            ),
            PrimaryButton(
              title: "Calcular novamente",
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

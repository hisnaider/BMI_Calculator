import 'package:bmi_calculator/constants/constants.dart';
import "package:flutter/material.dart";

class GenderButton extends StatelessWidget {
  const GenderButton({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 125,
        ),
        Text(
          text,
          style: tscSmallText,
        )
      ],
    );
  }
}



/*

return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 125,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    ),
  );

          */
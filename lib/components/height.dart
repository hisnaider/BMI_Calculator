import "package:bmi_calculator/constants/constants.dart";
import "package:flutter/material.dart";

class Height extends StatelessWidget {
  const Height({
    required this.value,
    required this.onChanged,
    super.key,
  });

  final double value;
  final Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "TAMANHO",
          style: tscSmallText,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: value.toStringAsFixed(2),
                style: tscMediumNumberText,
              ),
              const TextSpan(text: "m")
            ],
          ),
        ),
        SliderTheme(
          data: const SliderThemeData(
            activeTrackColor: Colors.blue,
            inactiveTrackColor: Color.fromRGBO(255, 255, 255, 0.161),
            overlayColor: Color.fromRGBO(0, 102, 255, 0.196),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
            thumbColor: Color.fromRGBO(33, 150, 243, 1),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
            trackHeight: 1,
          ),
          child: Slider(
            value: value,
            min: 1.0,
            max: 2.30,
            // thumbColor: Colors.blue,
            // activeColor: Colors.blue[700],
            // inactiveColor: Colors.blue[200],
            onChanged: (double value) {
              onChanged(value);
            },
          ),
        )
      ],
    );
  }
}

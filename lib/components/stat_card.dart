import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

statCard(String text, int value, onPressed) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(text, style: tscSmallText),
      Text(
        value.toString(),
        style: tscMediumNumberText,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyIconButtom(
            icon: Icons.remove,
            onPressed: () {
              value > 0 ? onPressed(-1) : null;
            },
          ),
          const SizedBox(
            width: 10,
          ),
          MyIconButtom(
            icon: Icons.add,
            onPressed: () {
              value > 0 ? onPressed(1) : null;
            },
          ),
        ],
      )
    ],
  );
}

class MyIconButtom extends StatelessWidget {
  const MyIconButtom({
    this.onPressed,
    required this.icon,
    super.key,
  });

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 5,
      animationDuration: const Duration(seconds: 1),
      fillColor: const Color.fromRGBO(59, 53, 96, 1),
      highlightColor: const Color.fromRGBO(106, 92, 197, 0.5),
      shape: const CircleBorder(),
      padding: const EdgeInsets.all(10),
      constraints: const BoxConstraints(maxHeight: 45, maxWidth: 45),
      child: Icon(
        icon,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({this.title = "Aperte aqui", this.onPressed, super.key});
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: RawMaterialButton(
        onPressed: onPressed,
        constraints: const BoxConstraints.expand(height: 75),
        fillColor: Colors.blue,
        highlightColor: Colors.blue[300],
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

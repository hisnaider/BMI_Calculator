import "package:flutter/material.dart";

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    required this.child,
    required this.color,
    this.onTap,
    this.a = 1,
    super.key,
  });

  final Widget child;
  final Color color;
  final VoidCallback? onTap;
  final int a;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: child,
      ),
    );
  }
}

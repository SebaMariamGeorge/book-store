import 'package:flutter/material.dart';


class PremiumButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  PremiumButton({required this.label, required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
    );
  }
}
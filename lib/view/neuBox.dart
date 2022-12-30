import 'package:flutter/material.dart';

class NeumBox extends StatelessWidget {
  final child;
  const NeumBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Center(child: child),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade300,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(5, 5),
                blurRadius: 15),
            const BoxShadow(
                color: Colors.white, offset: Offset(-5, -5), blurRadius: 15)
          ]),
    );
  }
}

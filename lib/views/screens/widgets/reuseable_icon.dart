import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class ReuseableIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onPressed;

  const ReuseableIcon(
      {super.key, required this.icon, required this.text, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(
                16,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(
                    .5,
                  ),
                )
              ],
            ),
            child: Icon(
              icon,
              size: 30,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Design extends StatelessWidget {
  final String name;
  final String emoji;
  final Color color;
  const Design({
    this.name,
    this.emoji,
    this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(emoji),
            SizedBox(width: 5),
            Text(
              name,
              style: GoogleFonts.raleway(
                fontSize: 15,
                color: Theme.of(context).focusColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

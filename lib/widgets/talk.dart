import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Talk extends StatelessWidget {
  final String name;
  final Color color;
  final String memoji;
  const Talk({
    this.name,
    this.color,
    this.memoji,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Container(
                color: color,
                child: Container(
                  child: Image.asset(memoji),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 25,
                  width: 25,
                  color: Theme.of(context).cardColor,
                  child: Center(child: Text('🎉')),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 25,
                  width: 25,
                  color: Theme.of(context).cardColor,
                  child: Center(
                      child: Icon(
                    Icons.mic_off,
                    color: Theme.of(context).focusColor,
                    size: 18,
                  )),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 18,
                width: 18,
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    '*',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            Text(
              name,
              style: GoogleFonts.raleway(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(width: 10),
      ],
    );
  }
}

class NoTalk extends StatelessWidget {
  final String name;
  final Color color;
  final String memoji;
  const NoTalk({
    this.name,
    this.color,
    this.memoji,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Container(
                color: color,
                child: Container(
                  child: Image.asset(memoji),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 25,
                  width: 25,
                  color: Theme.of(context).cardColor,
                  child: Center(child: Text('✋')),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: GoogleFonts.raleway(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

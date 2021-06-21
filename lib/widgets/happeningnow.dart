import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HappeningNow extends StatelessWidget {
  final String title;
  final String roomNo;
  final String image1;
  final String image2;
  final String image3;
  const HappeningNow({
    @required this.title,
    @required this.image1,
    @required this.roomNo,
    @required this.image2,
    @required this.image3,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 140,
        color: Theme.of(context).hintColor,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  color: Theme.of(context).focusColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Pitch your startup idea to VCc & top Entrepreneurs',
                style: GoogleFonts.raleway(
                  fontSize: 15,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 30,
                          width: 30,
                          color: Colors.green[200],
                          child: Image.asset(image1),
                        ),
                      ),
                      SizedBox(width: 5),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 30,
                          width: 30,
                          color: Colors.amber[200],
                          child: Image.asset(image2),
                        ),
                      ),
                      SizedBox(width: 5),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 30,
                          width: 30,
                          color: Colors.teal[200],
                          child: Image.asset(image3),
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 30,
                      width: 100,
                      color: Theme.of(context).hoverColor,
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.supervisor_account,
                                  size: 20,
                                ),
                                Text(
                                  roomNo,
                                  style: GoogleFonts.raleway(
                                    fontSize: 13,
                                    color: Theme.of(context).focusColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.mic,
                                  size: 20,
                                ),
                                Text(
                                  '120',
                                  style: GoogleFonts.raleway(
                                    fontSize: 13,
                                    color: Theme.of(context).focusColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:clubhouse_ui_clone/screens/room.dart';
import 'package:clubhouse_ui_clone/widgets/design.dart';
import 'package:clubhouse_ui_clone/widgets/happeningnow.dart';
import 'package:clubhouse_ui_clone/widgets/upcoming.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  static const routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Good Morning, \nMichael',
                              style: GoogleFonts.raleway(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.search),
                                SizedBox(width: 10),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    color: Colors.purple[200],
                                    child: Image.asset(
                                      'assets/images/9.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: GridView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                              childAspectRatio: 1 / 2.4,
                              maxCrossAxisExtent: 200,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            children: [
                              Design(
                                name: 'Design',
                                emoji: '🎨',
                                color: Theme.of(context).errorColor,
                              ),
                              Design(
                                name: 'Design',
                                emoji: '🎮',
                                color: Theme.of(context).canvasColor,
                              ),
                              Design(
                                name: 'Design',
                                emoji: '🏀',
                                color: Theme.of(context).cursorColor,
                              ),
                              Design(
                                name: 'Design',
                                emoji: '🎨',
                                color: Theme.of(context).indicatorColor,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Upcoming',
                          style: GoogleFonts.raleway(
                            fontSize: 15,
                            color: Theme.of(context).focusColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Upcoming(),
                        SizedBox(height: 10),
                        Text(
                          'Happening now',
                          style: GoogleFonts.raleway(
                            fontSize: 15,
                            color: Theme.of(context).focusColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        HappeningNow(
                          title: 'STARTUP CLUB',
                          image1: 'assets/images/1.png',
                          image2: 'assets/images/4.png',
                          image3: 'assets/images/2.png',
                          roomNo: ' 354',
                        ),
                        SizedBox(height: 20),
                        HappeningNow(
                          title: 'DATING GAME + SHOOT SHOT',
                          image1: 'assets/images/6.png',
                          image2: 'assets/images/5.png',
                          image3: 'assets/images/7.png',
                          roomNo: ' 720',
                        ),
                        SizedBox(height: 20),
                        HappeningNow(
                          title: 'DATING GAME + SHOOT SHOT',
                          image1: 'assets/images/1.png',
                          image2: 'assets/images/1.png',
                          image3: 'assets/images/1.png',
                          roomNo: ' 354',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 30,
                      width: 30,
                      color: Theme.of(context).dividerColor,
                      child: Icon(
                        CupertinoIcons.calendar,
                        color: Theme.of(context).splashColor,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(Room.routeName);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 50,
                        width: 150,
                        color: Colors.deepPurple,
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_circle_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Start Room',
                                style: GoogleFonts.raleway(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 30,
                      width: 30,
                      color: Theme.of(context).dividerColor,
                      child: Icon(
                        CupertinoIcons.person,
                        color: Theme.of(context).splashColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:clubhouse_ui_clone/widgets/design.dart';
import 'package:clubhouse_ui_clone/widgets/talk.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Room extends StatelessWidget {
  static const routeName = 'room';
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
                            Icon(
                              Icons.keyboard_arrow_down_sharp,
                              size: 30,
                            ),
                            Text(
                              'Design, Build, Improve',
                              style: GoogleFonts.raleway(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              height: 10,
                              width: 20,
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: MediaQuery.of(context).size.height,
                          child: GridView(
                            scrollDirection: Axis.vertical,
                            padding: EdgeInsets.zero,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                              childAspectRatio: 2 / 2.5,
                              maxCrossAxisExtent: 150,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                            ),
                            children: [
                              Talk(
                                name: 'James',
                                color: Colors.orange[200],
                                memoji: 'assets/images/1.png',
                              ),
                              Talk(
                                name: 'Richeal',
                                color: Colors.deepPurple[200],
                                memoji: 'assets/images/6.png',
                              ),
                              NoTalk(
                                name: 'Miriam',
                                color: Colors.red[200],
                                memoji: 'assets/images/3.png',
                              ),
                              NoTalk(
                                name: 'Franklina',
                                color: Colors.amber[200],
                                memoji: 'assets/images/4.png',
                              ),
                              Talk(
                                name: 'Raphael',
                                color: Colors.teal[200],
                                memoji: 'assets/images/1.png',
                              ),
                              Talk(
                                name: 'Joyce',
                                color: Colors.blue[200],
                                memoji: 'assets/images/8.png',
                              ),
                              NoTalk(
                                name: 'Bernice',
                                color: Colors.cyan[200],
                                memoji: 'assets/images/12.png',
                              ),
                              Talk(
                                name: 'Glenn',
                                color: Colors.green[200],
                                memoji: 'assets/images/10.png',
                              ),
                              Talk(
                                name: 'Gabriel',
                                color: Colors.black38,
                                memoji: 'assets/images/11.png',
                              ),
                              NoTalk(
                                name: 'Michael',
                                color: Colors.brown[200],
                                memoji: 'assets/images/7.png',
                              ),
                              Talk(
                                name: 'Michael',
                                color: Colors.pink[200],
                                memoji: 'assets/images/5.png',
                              ),
                              Talk(
                                name: 'Michael',
                                color: Colors.deepOrange[200],
                                memoji: 'assets/images/2.png',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.deepPurple,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                        child: Container(
                          height: 90,
                          color: Colors.deepPurple,
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 20, right: 20, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    height: 5,
                                    width: 40,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      child: Container(
                                        height: 40,
                                        width: 240,
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          decoration: InputDecoration(
                                            hintText: 'Type a thought here...',
                                            contentPadding: EdgeInsets.only(
                                                top: 10, left: 10),
                                            hintStyle: GoogleFonts.raleway(
                                                fontSize: 15,
                                                color: Colors.white),
                                            fillColor: Colors.deepPurple[300],
                                            filled: true,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.deepPurple[300]),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        color: Colors.grey[100],
                                        child: Center(
                                          child: Icon(
                                            Icons.send,
                                            color: Colors.deepPurple,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                        child: Container(
                          height: 90,
                          color: Theme.of(context).accentColor,
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    width: 150,
                                    height: 40,
                                    color: Theme.of(context).cardColor,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('✌🏾'),
                                        SizedBox(width: 5),
                                        Text(
                                          'Leave quietly',
                                          style: GoogleFonts.raleway(
                                            fontSize: 15,
                                            color: Colors.deepPurple,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        color: Theme.of(context).cardColor,
                                        child: Center(child: Text('✋')),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        color: Theme.of(context).cardColor,
                                        child: Image.asset(
                                          'assets/images/9.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

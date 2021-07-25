import 'package:flutter/material.dart';
import 'package:khojoapk/select.dart';
import 'package:khojoapk/user/partnerProfile.dart';
import 'package:khojoapk/user/qrScanner.dart';
import 'package:khojoapk/user/userFav.dart';
import 'package:khojoapk/user/userHome.dart';
import 'package:khojoapk/user/userProfile.dart';
import 'package:khojoapk/user/userSearch.dart';

class UserCat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: IconButton(
                icon: Icon(Icons.home_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HmUsr(),
                    ),
                  );
                },
              ),
            ),
            Container(
              child: IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserSearch()),
                  );
                },
              ),
            ),
            Container(
              child: IconButton(
                icon: Icon(Icons.qr_code_scanner_sharp),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QrScanner(),
                    ),
                  );
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0)),
                color: Colors.redAccent,
              ),
              height: 60,
              width: 60,
              child: IconButton(
                icon: Icon(Icons.category_outlined),
                color: Colors.white,
                iconSize: 40,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserCat(),
                    ),
                  );
                },
              ),
            ),
            IconButton(
              icon: Icon(Icons.favorite_border_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserFav(),
                  ),
                );
              },
            ),
            // IconButton(
            //   icon: Icon(Icons.person_outline),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => UserProfile(),
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0.0),
                    bottomRight: Radius.circular(25.0),
                    topLeft: Radius.circular(0.0),
                    bottomLeft: Radius.circular(25.0)),
                color: Colors.redAccent,
              ),
              height: 180,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30.0),
                                      bottomRight: Radius.circular(30.0),
                                      topLeft: Radius.circular(30.0),
                                      bottomLeft: Radius.circular(30.0)),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      focusColor: Colors.white,
                                      hoverColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(50.0),
                                        ),
                                      ),
                                      hintText: 'Type here to search',
                                      hintStyle: TextStyle(
                                        color: Colors.black26,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            //   Expanded(
                            //     flex: 2,
                            //     child: Container(
                            //       decoration: BoxDecoration(
                            //         borderRadius: BorderRadius.only(
                            //             topRight: Radius.circular(30.0),
                            //             bottomRight: Radius.circular(30.0),
                            //             topLeft: Radius.circular(30.0),
                            //             bottomLeft: Radius.circular(30.0)),
                            //         color: Colors.white,
                            //       ),
                            //       height: 60,
                            //       child: IconButton(
                            //           icon: Icon(
                            //             Icons.search,
                            //             color: Colors.red,
                            //             size: 30,
                            //           ),
                            //           onPressed: null),
                            //     ),
                            //   ),
                            // ],
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/athlete.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Athlete'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/maid.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Maid'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/taxidriver.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Taxi Driver'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/athlete.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Athlete'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/maid.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Maid'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/taxidriver.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Taxi Driver'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/athlete.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Athlete'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/maid.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Maid'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/taxidriver.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Taxi Driver'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/athlete.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Athlete'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/maid.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Maid'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/taxidriver.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Taxi Driver'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/athlete.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Athlete'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/maid.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Maid'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/taxidriver.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Taxi Driver'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/athlete.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Athlete'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/maid.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Maid'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0)),
                              color: Colors.redAccent,
                            ),
                            height: 80,
                            child: Image.asset(
                              'images/taxidriver.png',
                              height: 50,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PartnerProfile(),
                                ),
                              );
                            },
                            child: Text('Taxi Driver'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

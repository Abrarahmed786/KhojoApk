import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:khojoapk/select.dart';
import 'package:khojoapk/user/qrScanner.dart';
import 'package:khojoapk/user/userCat.dart';
import 'package:khojoapk/user/userFav.dart';
import 'package:khojoapk/user/userProfile.dart';
import 'package:khojoapk/user/userSearch.dart';

class HmUsr extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
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
                icon: Icon(Icons.home_outlined),
                color: Colors.white,
                iconSize: 40,
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
            IconButton(
              icon: Icon(Icons.search_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserSearch()),
                );
              },
            ),
            IconButton(
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
            IconButton(
              icon: Icon(Icons.category_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserCat(),
                  ),
                );
              },
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
              height: 200,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Hello,' + user.displayName,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0)),
                            color: Colors.white,
                          ),
                          height: 60,
                          width: 60,
                          child: FlatButton(
                            child: CircleAvatar(
                              child: Image.network(user.photoURL),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UserProfile(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Icon(Icons.location_on, color: Colors.white),
                      ),
                      Text(
                        'Jaipur, IN',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: Text(
                      'How can we help you?',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: CarouselSlider(
                options: CarouselOptions(height: 900.0),
                items: [1, 2, 3, 4, 5].map(
                  (i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          height: double.infinity,
                          // width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 0.0),
                          decoration: BoxDecoration(color: Colors.white),
                          child: Image.asset(
                            'images/ada.png',
                            height: 200,
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Quick Categories'),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserCat(),
                        ),
                      );
                    },
                    child: Text(
                      'View All',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/adb.png',
                  height: 100,
                ),
                Image.asset(
                  'images/fire.png',
                  height: 100,
                ),
                Image.asset(
                  'images/hospital.png',
                  height: 100,
                ),
                Image.asset(
                  'images/police.png',
                  height: 100,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/hk.png',
                  height: 250,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'images/movie.png',
                      height: 125,
                    ),
                    Image.asset(
                      'images/movie.png',
                      height: 125,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

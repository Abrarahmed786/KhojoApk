import 'package:flutter/material.dart';
import 'package:khojoapk/select.dart';
import 'package:khojoapk/user/qrScanner.dart';
import 'package:khojoapk/user/userCat.dart';
import 'package:khojoapk/user/userHome.dart';
import 'package:khojoapk/user/userProfile.dart';
import 'package:khojoapk/user/userSearch.dart';

class UserFav extends StatelessWidget {
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
              child: IconButton(
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
                color: Colors.white,
                iconSize: 40,
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
              height: 150,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Your Favourites',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset('images/cards.png')
          ],
        ),
      ),
    );
  }
}

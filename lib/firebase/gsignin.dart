import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:khojoapk/provider/google_sign_in.dart';
import 'package:khojoapk/signup.dart';
import 'package:khojoapk/user/userHome.dart';
import 'package:khojoapk/widget/logged_in_widget.dart';
import 'package:khojoapk/widget/sign_up_widget.dart';
import 'package:provider/provider.dart';

class Gsign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            final provider = Provider.of<GoogleSignInProvider>(context);
            if (provider.isSigningIn) {
              return SpinKitCircle();
            } else if (snapshot.hasData) {
              return HmUsr();
            } else {
              return SignUpWidget();
            }
          },
        ),
      ),
    );
  }
}

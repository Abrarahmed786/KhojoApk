import 'package:flutter/material.dart';
import 'package:khojoapk/widget/google_dignup_widget.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => buildSignUp();
  Widget buildSignUp() => Column(
        children: [
          Spacer(),
          Align(
            alignment: Alignment.center,
            child: Container(width: 175, child: Image.asset('images/logob.png')
                // Text(
                //   'Welcome back to MyApp',
                //   style: TextStyle(
                //     color: Colors.black,
                //     fontSize: 30,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                ),
          ),
          Spacer(),
          SizedBox(
            height: 12,
          ),
          GoogleSignupButtonWidget(),
          Text('Login To Continue'),
          Spacer(),
        ],
      );
}

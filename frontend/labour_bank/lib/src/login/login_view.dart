import 'package:flutter/material.dart';
import 'package:labour_bank/src/login/otp_view.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset('assets/images/logo.jpeg'),
            const Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                child: Text(
                  "Phone Number",
                  style: TextStyle(
                      color: Color.fromARGB(255, 65, 56, 196),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56, vertical: 0),
              child: TextFormField(
                  maxLength: 15, keyboardType: TextInputType.number),
            ),
            SizedBox(
              width: 280,
              child: ElevatedButton(
                  onPressed: () => {
                        Navigator.restorablePushNamed(
                          context,
                          OtpView.routeName,
                        )
                      },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 15, 7, 119),
                  ),
                  child: const Text(
                    "Submit Phone Number",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            const Align(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Text(
                  "Have a referral code?",
                  style: TextStyle(
                      color: Color.fromARGB(255, 65, 56, 196),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Text(
                  "Looking to hire staff? Click here",
                  style: TextStyle(
                      color: Color.fromARGB(255, 70, 166, 190),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

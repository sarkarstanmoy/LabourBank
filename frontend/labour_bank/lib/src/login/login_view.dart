import 'package:flutter/material.dart';
import 'package:labour_bank/src/login/otp_view.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Image.asset('assets/images/logo-transparent.png'),
            const Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                child: Text(
                  "Phone Number",
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
                  child: Text(
                    "Submit Phone Number",
                    style: Theme.of(context).primaryTextTheme.bodyLarge,
                  )),
            ),
            const Align(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  "Have a referral code?",
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  "Looking to hire staff? Click here",
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

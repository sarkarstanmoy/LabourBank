import 'package:flutter/material.dart';
import 'package:labour_bank/src/common/widgets/bottom_navigation.dart';
import 'package:labour_bank/src/add_profile/add_profile_view.dart';

class OtpView extends StatelessWidget {
  const OtpView({Key? key}) : super(key: key);
  static const routeName = '/otp_view';
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
          child: Column(
            children: [
              Text("Welcome back",
                  style: Theme.of(context).textTheme.headline3),
              Text("Hafeez Babu!".toUpperCase(),
                  style: Theme.of(context).textTheme.headline4),
              Text("We have sent OTP via SMS to",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.black.withOpacity(0.5))),
              RichText(
                  text: TextSpan(
                      text: "8824791385 ",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.black),
                      children: [
                    TextSpan(
                        text: "for verification",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.black.withOpacity(0.5)))
                  ])),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 20, 0, 0),
                    child: SizedBox(
                      width: 40,
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), counterText: ""),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: SizedBox(
                      width: 40,
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), counterText: ""),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: SizedBox(
                      width: 40,
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), counterText: ""),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: SizedBox(
                      width: 40,
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), counterText: ""),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
                child: SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () => {
                            Navigator.restorablePushNamed(
                              context,
                              BottomNavigationWidget.routeName,
                            )
                          },
                      child: Text(
                        "Verify",
                        style: Theme.of(context).primaryTextTheme.bodyText1,
                      )),
                ),
              ),
              const Text(
                "You are already registerd",
              ),
              const Text(
                "Please enter OTP to move ahead",
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Text("Didn't receive OTP",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.black.withOpacity(0.5)))),
              const Text(
                "Resend OTP",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              Text("OR",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.black.withOpacity(0.5))),
              const Text(
                "Verify using call",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

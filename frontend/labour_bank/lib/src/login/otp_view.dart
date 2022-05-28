import 'package:flutter/material.dart';
import 'package:labour_bank/src/home_screen/home_screen_view.dart';

class OtpView extends StatelessWidget {
  const OtpView({Key? key}) : super(key: key);
  static const routeName = '/otp_view';
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
          child: Column(
            children: [
              const Text("Welcome back",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
              Text("Hafeez Babu!".toUpperCase(),
                  style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w900,
                      fontSize: 30)),
              const Text("We have sent OTP via SMS to"),
              const Text("8824791385 for verification"),
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
                              HomeScreenView.routeName,
                            )
                          },
                      child: const Text(
                        "Verify",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
              const Text("You are already registerd"),
              const Text("Please enter OTP to move ahead"),
              const Padding(
                  padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                  child: Text("Didn't receive OTP")),
              const Text("Resend OTP"),
              const Text("OR"),
              const Text("Verify using call"),
            ],
          ),
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({Key? key}) : super(key: key);
  static const routeName = '/home_screen_view';
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: mediaQuery.size.width,
          height: mediaQuery.size.height,
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 40, 20, 0),
                    child: Container(
                      color: Colors.pink,
                      height: 300,
                      width: 300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 80, 0, 0),
                    child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/chef.jpeg")),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(200, 160, 0, 0),
                    child: Text(
                      "Kitchen Department",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 40, 20, 0),
                    child: Container(
                      color: Colors.green.shade300,
                      height: 300,
                      width: 300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 80, 0, 0),
                    child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/serviceboy.jpeg")),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(200, 160, 0, 0),
                    child: Text(
                      "Service Department",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

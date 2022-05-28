import 'package:flutter/material.dart';
import 'package:labour_bank/src/helpers/base_page.dart';

class HomeScreenView extends BasePage {
  const HomeScreenView({Key? key}) : super(key: key);
  static const routeName = '/home_screen_view';

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        Text("FOR RESTAURANTS", style: Theme.of(context).textTheme.bodyText1),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text("I am interested in",
              style: Theme.of(context).textTheme.bodyText1),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                color: Colors.pink,
                height: 300,
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
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Container(
                color: Colors.green.shade300,
                height: 300,
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
    );
  }
}

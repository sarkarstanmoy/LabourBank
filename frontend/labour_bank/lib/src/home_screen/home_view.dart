import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  static const routeName = '/home_view';
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/images/logo-transparent.png")),
                  SvgPicture.asset(
                    "assets/images/avatar.svg",
                    height: 50,
                    width: 50,
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Connect with Restaurants and Find your dream job",
                  style:
                      Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                child: SvgPicture.asset(
                  "assets/images/connect.svg",
                  alignment: Alignment.topCenter,
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}

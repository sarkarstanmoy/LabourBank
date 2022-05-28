import 'package:flutter/material.dart';

abstract class BasePage extends StatelessWidget {
  const BasePage({Key? key}) : super(key: key);
  Widget body(BuildContext context);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
            width: mediaQuery.size.width,
            height: mediaQuery.size.height,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text('Labour Bank',
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold)),
                  body(context)
                ],
              ),
            )),
      )),
    );
  }
}

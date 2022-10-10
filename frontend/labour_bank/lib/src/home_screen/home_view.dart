import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:labour_bank/src/common/widgets/home_screen_card_view.dart';
import 'package:lottie/lottie.dart';

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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            "Labour Bank",
            style:
                Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 24),
          ),
          elevation: 20,
          shadowColor: const Color(0xff721c80),
        ),
        body: SingleChildScrollView(
          child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [Color(0xffffffff), Color(0xff051177)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      Lottie.asset('assets/restaurant.json',
                          height: 200, fit: BoxFit.fill),
                      cardview(
                          const Text('Recent update'),
                          Text(
                            'Open positions for cooks',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          Text(
                            'Restaurants are looking for cooks. Apply Now.',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          const Text('MORE INFO')),
                      cardview(
                          const Text('Recent update'),
                          Text(
                            'Open positions for managers',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          Text(
                            'XYZ restaurants are looking for managers. Apply Now.',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          const Text('MORE INFO')),
                      cardview(
                          const Text('Recent update'),
                          Text(
                            'GPay is available',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          Text(
                            'Now you can use GPay for payments',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          const Text('MORE INFO')),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}

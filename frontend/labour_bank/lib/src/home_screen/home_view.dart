import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import '../common/widgets/home_screen_card_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  static const routeName = '/home_view';
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Card> homeItems = [
    cardview(const Text('Kitchen'), const Text('Find kitchen jobs'),
        const Text(''), const Text('More Info')),
    cardview(const Text('Service'), const Text('Find service jobs'),
        const Text(''), const Text('More Info'))
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
            ),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(
                'assets/images/connect.svg',
                height: 300,
              )),
          CarouselSlider.builder(
            carouselController: _controller,
            options: CarouselOptions(
              autoPlay: false,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
            itemCount: homeItems.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Container(
              child: homeItems[itemIndex],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: homeItems.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 5.0,
                  height: 5.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

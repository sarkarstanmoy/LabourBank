import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:labour_bank/src/add_profile/add_profile_view.dart';
import 'package:labour_bank/src/home_screen/home_view.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  static const routeName = '/navigation';

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

int pageIndex = 0;
HomeView _homePage = const HomeView();
////final SearchPage _search = SearchPage();

Widget _showPage = const HomeView();

Widget _pageChooser(int page) {
  switch (page) {
    case 0:
      return _homePage;

    // case 1:
    //   return _search;

    default:
      return _homePage;
  }
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  label: "HOME"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: "SEARCH")
            ],
            onTap: (int tappedPage) {
              setState(() {
                _showPage = _pageChooser(tappedPage);
                pageIndex = tappedPage;
              });
            },
            currentIndex: pageIndex,
          ),
          body: _showPage),
    ]);
  }
}

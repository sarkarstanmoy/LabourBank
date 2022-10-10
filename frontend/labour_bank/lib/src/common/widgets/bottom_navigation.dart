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
AddProfileView _addprofile = const AddProfileView();
//final ProfilePage _profile = ProfilePage();

Widget _showPage = const HomeView();

Widget _pageChooser(int page) {
  switch (page) {
    case 0:
      return _homePage;

    // case 1:
    //   return _search;

    case 2:
      return _addprofile;

    // case 3:
    //   return _streamingDevices;

    default:
      return _homePage;
  }
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Theme.of(context).primaryColor,
            items: const [
              Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              Icon(
                Icons.person_add_alt_1_outlined,
                color: Colors.black,
              ),
              Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ],
            onTap: (int tappedPage) {
              setState(() {
                _showPage = _pageChooser(tappedPage);
              });
            },
          ),
          body: Container(
            color: Colors.transparent,
            child: Center(
              child: _showPage,
            ),
          )),
    ]);
  }
}
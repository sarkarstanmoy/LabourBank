import 'package:flutter/material.dart';
import 'package:labour_bank/src/helpers/base_page.dart';

class AddProfileView extends BasePage {
  const AddProfileView({Key? key}) : super(key: key);
  static const routeName = '/add_profile_view';

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text("FOR RESTAURANTS",
              style: Theme.of(context).textTheme.bodyMedium),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text("I am interested in",
                style: Theme.of(context).textTheme.bodyMedium),
          ),
          Container(
            color: Colors.pink,
            child: Row(
              children: [
                SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/chef.jpeg")),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text("Kitchen Department",
                      style: Theme.of(context).textTheme.headline6),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Container(
              color: Colors.green.shade300,
              child: Row(
                children: [
                  SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/images/serviceboy.jpeg")),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text("Service Department",
                        style: Theme.of(context).textTheme.headline6),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

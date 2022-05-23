import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/screens/home/widgets/featured_plants.dart';
import 'package:plantapp/screens/home/widgets/recommeded_plant.dart';
import 'package:plantapp/screens/home/widgets/title_with_more_btn.dart';
import 'package:plantapp/variables/constants.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //get size of whole screen
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBar(size: size),
          TitleWithMoreBtn(
            title: 'Recommended',
            press: () {},
          ),
          RecommendedPlants(),
          TitleWithMoreBtn(
            title: 'Featured Plants',
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}

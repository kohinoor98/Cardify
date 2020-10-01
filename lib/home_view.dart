import 'package:flutter/material.dart';
import 'package:cardify/constants.dart';
import 'package:cardify/utilities/accounts_view.dart';
import 'package:cardify/utilities/balance_widget.dart';
import 'package:cardify/utilities/credit_&_debit_card.dart';

import 'constants.dart';
import 'constants.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: kPrimaryColor,
              expandedHeight: 200,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.zero,
                title: Padding(
                  padding: const EdgeInsets.only(left: 25, top: 0, bottom: 10),
                  child: Text(
                    "Cardify",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.8),
                  ),
                ),
                // background: Image.asset(
                //   '022.jpg', // <===   Add your own image to assets or use a .network image instead.
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardView(),
              BalanceView(),
              AccountsView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          //borderRadius: BorderRadius.circular(20),
        ),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.account_circle,
                size: 30,
                color: kCardColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.forum,
                size: 30,
                color: kCardColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.account_balance_wallet,
                size: 30,
                color: kCardColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.assessment,
                size: 30,
                color: kCardColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.settings,
                size: 30,
                color: kCardColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

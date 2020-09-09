import 'package:flutter/material.dart';
import 'package:cardify/constants.dart';
import 'package:cardify/utilities/accounts_view.dart';
import 'package:cardify/utilities/balance_widget.dart';
import 'package:cardify/utilities/credit_&_debit_card.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
          child: Text(
            "Cardify",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 0.8),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardView(),
            BalanceView(),
            AccountsView(),
          ],
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

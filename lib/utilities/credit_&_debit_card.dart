import 'package:flutter/material.dart';
import 'package:cardify/constants.dart';

class CardView extends StatefulWidget {
  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: kPrimaryColor,
      ),
      child: Center(
        child: PageView(
          children: [
            FrontView(),
            FrontView(),
            FrontView(),
            BackView(),
          ],
        ),
      ),
    );
  }
}

// This is the front view of the card

class FrontView extends StatefulWidget {
  @override
  _FrontViewState createState() => _FrontViewState();
}

class _FrontViewState extends State<FrontView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 42, horizontal: 25),
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            color: kCardColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

// This is the back view of the card

class BackView extends StatefulWidget {
  @override
  _BackViewState createState() => _BackViewState();
}

class _BackViewState extends State<BackView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 42, horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

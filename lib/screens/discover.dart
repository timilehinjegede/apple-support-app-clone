import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(
          top: 20,
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                'Discover',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
            ),
            Divider(
              color: Colors.black54,
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 5.0, left: 20.0, right: 20, bottom: 10),
              child: Container(
                height: 250,
                width: double.infinity,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  _collections(),
                  SizedBox(
                    width: 10,
                  ),
                  _collections(),
                  SizedBox(
                    width: 10,
                  ),
                  _collections(),
                  SizedBox(
                    width: 10,
                  ),
                  _collections(),
                  SizedBox(
                    width: 10,
                  ),
                  _collections()
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Divider(
                color: Colors.black54,
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 5.0, left: 20.0, right: 20, bottom: 10),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5.0,
                left: 20.0,
                right: 20,
              ),
              child: Text(
                'Article',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5.0,
                left: 20.0,
                right: 20,
              ),
              child: Text(
                'Quickly navigate with gestures',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 5.0, left: 20.0, right: 20, bottom: 5),
              child: Text(
                'Multitask, adjust settings, and access all the things you do most',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _collections() {
    return Stack(
      children: [
        Container(
          height: 250,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Positioned(
          top: 15,
          left: 15,
          child: Text(
            'Collection',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Positioned(
          top: 190,
          left: 15,
          child: Text(
            'Welcome to iOS 11',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          top: 215,
          left: 15,
          child: Text(
            'For yout iPhone X',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Timilehin Jegede',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey[300],
                      width: 1.0
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.access_time, color: Colors.blue,size: 32,),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Text(
                        'Recent History',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey,),
                  ],
                ),
              ),
            ),
            Container(
              height: 20,
              color: Colors.grey[200],
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey[300],
                      width: 1.0
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.phone_iphone, color: Colors.blue,size: 32,),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Text(
                        'Check Coverage',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey,),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey[300],
                      width: 1.0
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.location_on, color: Colors.blue,size: 32,),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Text(
                        'Change Location',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey,),
                  ],
                ),
              ),
            ),
            Container(
              height: 20,
              color: Colors.grey[200],
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey[300],
                      width: 1.0
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.access_time, color: Colors.blue,size: 32,),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Submit Feedback',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Help us improve this app',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey,),
                  ],
                ),
              ),
            ),
            Container(
              height: 20,
              color: Colors.grey[200],
            ),
          ],
        ),
      )
    );
  }
}

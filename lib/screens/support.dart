import 'package:applesupport/screens/search.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatefulWidget {
  @override
  _SupportScreenState createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15.0, top: 30, bottom: 10),
            child: Text(
              'Get Support',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0, right: 15.0, bottom: 5),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>SearchScreen()));
              },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 10,),
                    Icon(Icons.search, color: Colors.grey,size: 20,),
                    SizedBox(width: 10,),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(color: Colors.black54,),
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15.0, bottom: 10, top: 10),
            child: Text(
              'What can we help you with?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right:15.0,left: 15),
            child: Divider(color: Colors.black54,),
          ),
          _buildItems("iPhone X", 'This iPhone X', 'images/ipx.png'),
          customDivider(),
          _buildItems("Apple Watch Series 2", 'Paired Apple Watch Series 2', 'images/iw.png'),
          customDivider(),
          _buildItems("Apple TV 4k", 'Apple TV 4k', 'images/4ktv.png'),
          customDivider(),
          _buildItems("iPad Pro", 'iPad Pro', 'images/ipp.png'),
          customDivider(),
          _buildItems("iPhone 7 Plus", 'iPhone 7 Plus', 'images/ip7p.png'),
          customDivider(),
        ],
      ),
    );
  }

  Widget _buildItems(String name, String description, String imgPath){
    return Container(
      padding: EdgeInsets.only(right: 15,left: 15),
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image(
            height: 70,
            width: 60,
            image: AssetImage(imgPath),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                    description,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 16,color: Colors.grey,),
        ],
      ),
    );
  }

  Widget customDivider(){
    return Padding(
      padding: const EdgeInsets.only(left: 80.0),
      child: Container(
        color: Colors.black12,
        height: 1,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}

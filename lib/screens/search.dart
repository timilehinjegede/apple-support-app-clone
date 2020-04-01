import 'package:applesupport/model/searchresults.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  String dropDownValue = 'iPhone 7 Plus';
  final searchTextEditingController = TextEditingController();

  void initState() {
    searchTextEditingController.addListener(() {
      final text = searchTextEditingController.text.toLowerCase();
      print(text);
    });
    super.initState();
  }

  void dispose() {
    searchTextEditingController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 35, left: 15.0, right: 15.0, bottom: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        controller: searchTextEditingController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search, color: Colors.grey,size: 22),
                          suffixIcon: GestureDetector(
                            onTap: (){

                            },
                              child: Icon(Icons.close, color: Colors.grey, size: 22,
                              ),
                          )
                        ),
                      )
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(color: Colors.black54,),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left:15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Results For',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10,),
                  DropdownButton<String>(
                    value: dropDownValue,
                    icon: Icon(Icons.arrow_drop_down, color: Colors.blue,size: 25,),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.w600),
                    underline: Container(
                      height: 0,
                      color: Colors.transparent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropDownValue = newValue;
                      });
                    },
                    items: <String>['iPhone 7 Plus', 'iPhone X', 'iPhone 11', 'iPhone 11 Pro'].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            _myDivider(),
            Container(
              height: MediaQuery.of(context).size.height ,
              child: ListView.builder(
                itemCount: Results.getAll().length,
                itemBuilder: (context,index){
                  return Column(
                    children: <Widget>[
                      ListTile(
                        isThreeLine: true ,
                        title: Text(
                          '${Results.getAll().elementAt(index).title}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        subtitle: Text(
                          '${Results.getAll().elementAt(index).description}',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      _myDivider(),
                    ],
                  );
                },
              ),
            )
           ],
        )
      ],
    ),
    );
  }

  Widget _myDivider(){
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: Divider(
        color: Colors.black54,
      ),
    );
  }
}

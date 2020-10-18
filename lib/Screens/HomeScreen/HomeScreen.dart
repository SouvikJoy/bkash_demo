import 'package:bkash_demo/Widgets/Constrants.dart';
import 'package:bkash_demo/Widgets/Size%20Config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home_screen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Image.asset(
            'assets/images/QR.png',
          color: kPrimaryColor,
          height: 40,
          width: 40,
        ),
        onPressed: () {},
        backgroundColor: kNonTextColor,
      ),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        toolbarHeight:80,
        automaticallyImplyLeading: false,
        leading: IconButton(
                color: Colors.white,
                  icon: Icon(Icons.person_pin),
                highlightColor: kNonTextColor,
                iconSize: 50,
                onPressed: () {},
          ),
        title: Container(
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            spacing: 125,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //SizedBox(width: SizeConfig.screenWidth *0.03),
                  Text(
                      "  Souvik Joy",
                    style: TextStyle(
                      color: kNonTextColor,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kNonTextColor,
                    ),
                    height: 30,
                    width: 150,
                    child: IconButton(
                      alignment: Alignment.topLeft,
                      icon: Image.asset(
                          'assets/images/taka.png',
                        alignment: Alignment.topLeft,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: Image.asset(
                    'assets/images/logowhite.png',
                  //color: kNonTextColor,
                  height: 50,
                  width: 50,
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 230,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.only(top: 20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 4,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                  Icons.ac_unit,
                            ),
                            onPressed: () {},
                          ),
                          Text('Send Money',style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.ac_unit,
                            ),
                            onPressed: () {},
                          ),
                          Text('Mobile Recharge',style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.ac_unit,
                            ),
                            onPressed: () {},
                          ),
                          Text('Cash Out',style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.ac_unit,
                            ),
                            onPressed: () {},
                          ),
                          Text('Make Payment',style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.ac_unit,
                            ),
                            onPressed: () {},
                          ),
                          Text('Add Money',style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.ac_unit,
                            ),
                            onPressed: () {},
                          ),
                          Text('Pay Bill',style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.ac_unit,
                            ),
                            onPressed: () {},
                          ),
                          Text('Tickets',style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.ac_unit,
                            ),
                            onPressed: () {},
                          ),
                          Text('More',style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              Container(
                //height: 100,
                width: MediaQuery.of(context).size.width * .97,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 25,
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                                child: Text(
                                  '    My bKash',
                                  style: TextStyle(
                                    fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              //height: 20,
                                child: IconButton(
                                  icon: Icon(
                                      Icons.arrow_drop_up,
                                    size: 15,
                                ),
                                  onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      SingleChildScrollView(
                        padding: EdgeInsets.only(bottom: 10, left: 10),
                        scrollDirection: Axis.horizontal,
                        child: Wrap(
                          spacing: 25,
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('01724281998',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('Souvik New',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('01786060067',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('Souvik',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('Golam',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('Jonson Vai',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('Nasa',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width * .97,
                child: Card(
                  color: Colors.white,
                ),
              ),
              Container(
                //height: 100,
                width: MediaQuery.of(context).size.width * .97,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 25,
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              child: Text(
                                '    Suggestions',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              //height: 20,
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_drop_up,
                                  size: 15,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      SingleChildScrollView(
                        padding: EdgeInsets.only(bottom: 10, left: 10),
                        scrollDirection: Axis.horizontal,
                        child: Wrap(
                          spacing: 25,
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('bdnews24.com',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('Donation',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('AjkerDeal',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('MetLife',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('Akash DTH',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('CARNIVAL',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('Deligram',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                //height: 100,
                width: MediaQuery.of(context).size.width * .97,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 25,
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              child: Text(
                                '    Offers',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              //height: 20,
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_drop_up,
                                  size: 15,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      SingleChildScrollView(
                        padding: EdgeInsets.only(bottom: 10, left: 10),
                        scrollDirection: Axis.horizontal,
                        child: Wrap(
                          spacing: 25,
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('30% Discount',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('10-10 Offer',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('1 TK Offer',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('100tk Discount',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('10% Discount',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('335tk Discount',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.ac_unit,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('Buy 1 Get 2 Lunch',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: kPrimaryColor,
        shape: CircularNotchedRectangle(),
        child: new Wrap(
          alignment: WrapAlignment.center,
          spacing: 200,
            children: <Widget>[
              Column(
                children: [
                  IconButton(
                          icon: Icon(Icons.home_outlined),
                        color: kNonTextColor,
                        onPressed: () {},
            ),
                  Text(
                      'Home',
                    style: TextStyle(
                      color: kNonTextColor,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  IconButton(
                      icon: Icon(
                          Icons.mail_outlined,
                      ),
                    color:  kNonTextColor,
                    onPressed: () {},
            ),
                  Text(
                    'Inbox',
                    style: TextStyle(
                      color: kNonTextColor,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
          ]
        ),
      ),
    );
  }
}

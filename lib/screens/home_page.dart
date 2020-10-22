import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gmail_ui/custom_list_tile.dart';
import 'package:gmail_ui/custom_widget/cuatom_bottom_sheet.dart';
import 'package:gmail_ui/custom_widget/custom_container.dart';
import 'package:gmail_ui/screens/compose_screen.dart';
import 'package:gmail_ui/screens/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<DrawerControllerState> _drawerKey =
      GlobalKey<DrawerControllerState>();
  List<String> name = [
    'Debajyati Banerjee',
    'Real Love',
    'College',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: DrawerWidget(),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: 15, left: 5, right: 15, bottom: 10),
                    // padding: EdgeInsets.only(left: 5, right: 10, top: 0, bottom: 0),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.red,
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 0,
                            child: Container(
                              // color: Colors.white,
                              child: IconButton(
                                icon: Icon(Icons.menu),
                                onPressed: () =>
                                    {_scaffoldKey.currentState.openDrawer()},
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              // color: Colors.green,
                              child: Material(
                                child: TextFormField(
                                  cursorColor: Colors.blue[600],
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    border: InputBorder.none,
                                    hintText: 'Search in emails',
                                    hintStyle: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: Container(
                              padding: EdgeInsets.all(12),
                              // color: Colors.blue,
                              child: GestureDetector(
                                onTap: () {
                                  // print('hi');
                                  bottomSheet(context);
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage('assets/profile.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'PRIMARY',
                      style: TextStyle(letterSpacing: 2),
                    ),
                  ),
                  customContainer(context, name[0], Colors.green),
                  customContainer(context, name[1], Colors.purple),
                  customContainer(context, name[2], Colors.pink),
                  customContainer(context, name[1], Colors.orange),
                  customContainer(context, name[2], Colors.green),
                  customContainer(context, name[0], Colors.teal),
                  customContainer(context, name[2], Colors.green),
                  customContainer(context, name[1], Colors.teal),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          isExtended: true,
          backgroundColor: Colors.white,
          autofocus: false,
          icon: Icon(
            Icons.edit_outlined,
            color: Colors.red,
          ),
          label: Text(
            'Compose',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w700,
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ComposeScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}

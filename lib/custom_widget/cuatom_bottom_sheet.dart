import 'package:flutter/material.dart';
import 'package:gmail_ui/custom_list_tile.dart';

Widget CustomWidgetBottomSheet(
    String name, IconData icon, BuildContext context) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.only(left: 5, top: 5),
        height: 40,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: Colors.grey[800],
              size: 25,
            ),
            SizedBox(width: 10),
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ],
        ),
      ),
    ),
  );
}

bottomSheet(BuildContext context) {
  List<String> name = [
    'Debajyati Banerjee',
    'Dibbo Banerjee',
    'Among Us',
  ];
  List<String> email = [
    'debajyatibanerjee0002@gmail.com',
    'debajyatibanerjee.rl.0002@gmail.com',
    'debajyatibanerjee.amonus.0002@gmail.com',
  ];

  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    isDismissible: true,
    context: context,
    builder: (context) {
      return Container(
        margin: EdgeInsets.only(left: 12, right: 12),
        height: MediaQuery.of(context).size.height / 1.15,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 00, left: 0, right: 0),
          // color: Colors.red,
          // height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                // color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: IconButton(
                        icon: Icon(
                          Icons.close,
                          size: 25,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.blue,
                          image: DecorationImage(
                            alignment: Alignment.centerLeft,
                            image: AssetImage('assets/google.jpeg'),
                            // fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 140,
                // color: Colors.yellow,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomListileone(),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Manage your Google Account',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          color: Colors.white,
                        ),
                        SizedBox(height: 20),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 10),
                        CustomListile(name[0], email[0], Colors.green),
                        SizedBox(height: 15),
                        CustomListile(name[1], email[1], Colors.yellow),
                        SizedBox(height: 15),
                        CustomListile(name[2], email[2], Colors.red),
                        SizedBox(height: 15),
                        CustomListile(name[0], email[0], Colors.blue),
                        SizedBox(height: 15),
                        CustomWidget('Add another account',
                            Icons.person_add_alt, context),
                        SizedBox(height: 15),
                        CustomWidget('Manage accounts on this device',
                            Icons.settings, context),
                        SizedBox(height: 15),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlatButton(
                              child: Text(
                                'Privacy Policy',
                                style: TextStyle(fontSize: 10),
                              ),
                              onPressed: () {},
                            ),
                            Icon(
                              Icons.circle,
                              size: 5,
                            ),
                            FlatButton(
                              child: Text(
                                'Privacy Policy',
                                style: TextStyle(fontSize: 10),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Widget CustomWidget(String name, IconData icon, BuildContext context) {
  return FlatButton(
    onPressed: () {},
    child: Container(
      padding: EdgeInsets.only(left: 15),
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.grey[700],
            size: 20,
          ),
          SizedBox(width: 20),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ),
  );
}

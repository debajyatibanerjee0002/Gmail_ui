import 'package:flutter/material.dart';

Widget CustomListile(String name, String email, Color color) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: color,
      child: Text(name[0]),
    ),
    title: Text(name),
    subtitle: Text(email),
  );
}

Widget CustomListileone() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/profile.jpeg'),
    ),
    title: Text('Debajyati Banerjee'),
    subtitle: Text('debajyatibanerjee0002@gmail.com'),
  );
}

Widget CustomListileoneTwo(String name, IconData icon, BuildContext context,
    String text, Color color, Color textColor) {
  return FlatButton(
    onPressed: () {
      // Navigator.pop(context);
    },
    child: Container(
      padding: EdgeInsets.only(left: 0, top: 5),
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: Colors.grey[800],
                size: 25,
              ),
              SizedBox(width: 20),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ],
          ),
          // SizedBox(width: 80),
          Container(
            // alignment: Alignment.centerRight,
            padding: EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
            // height: 20,
            // width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w800,
                color: textColor,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget CustomListileoneThree(String name, IconData icon, BuildContext context,
    String text, Color color, Color textColor) {
  return FlatButton(
    color: Colors.red[100],
    onPressed: () {
      // Navigator.pop(context);
    },
    child: Container(
      padding: EdgeInsets.only(left: 0, top: 5, bottom: 5),
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: Colors.red[800],
                size: 25,
              ),
              SizedBox(width: 20),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.red[800],
                ),
              ),
            ],
          ),
          // SizedBox(width: 80),
          Container(
            // alignment: Alignment.centerRight,
            padding: EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
            // height: 20,
            // width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w800,
                color: textColor,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

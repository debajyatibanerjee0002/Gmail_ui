import 'package:flutter/material.dart';

Widget customContainer(BuildContext context, String name, Color color) {
  return Container(
    margin: EdgeInsets.only(right: 10),
    // color: Colors.red,
    height: 90,
    width: MediaQuery.of(context).size.height,
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            // color: Colors.yellow,
            child: CircleAvatar(
              radius: 25,
              child: Text(
                name[0],
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              backgroundColor: color,
            ),
          ),
        ),
        SizedBox(width: 5),
        Expanded(
          flex: 3,
          child: Container(
            // color: Colors.green,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    // color: Colors.pink,
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                      softWrap: true,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    // color: Colors.orange,
                    child: Text(
                      'What\'s up lovely people ki hal chal',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[800],
                      ),
                      softWrap: true,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    // color: Colors.green,
                    child: Text(
                      'Abhi to bas suru hua hei, chalo dekhte hei',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            // alignment: Alignment.centerLeft,
            // color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '04:00 am',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.more_horiz,
                      size: 15,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.star_border,
                        size: 30,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

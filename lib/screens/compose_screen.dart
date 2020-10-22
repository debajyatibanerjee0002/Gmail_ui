import 'package:flutter/material.dart';

class ComposeScreen extends StatelessWidget {
  Widget _customContainer(BuildContext context, String name) {
    return Container(
      // color: Colors.green,
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              name,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: Material(
              // color: Colors.yellow,
              child: TextFormField(
                cursorHeight: 20,
                cursorColor: Colors.blue[600],
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    left: 15,
                    top: 15,
                    bottom: 10,
                    right: 15,
                  ),
                  isCollapsed: false,
                  enabled: true,
                  suffixIcon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey[700],
                  ),
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  // hintText: 'Search in emails',
                  // hintStyle: TextStyle(
                  //   fontSize: 17,
                  // ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Compose',
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.attachment,
                color: Colors.grey[700],
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.send,
                color: Colors.grey[700],
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.grey[700],
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            _customContainer(context, 'From'),
            SizedBox(height: 10),
            Divider(
              thickness: 1,
            ),
            _customContainer(context, 'To'),
            SizedBox(height: 10),
            Divider(
              thickness: 1,
            ),
            _customContainer(context, 'Subject'),
            SizedBox(height: 10),
            Divider(
              thickness: 1,
            ),
            Expanded(
              child: Container(
                color: Colors.teal,
                height: MediaQuery.of(context).size.height - 10,
                width: MediaQuery.of(context).size.width,
                child: Material(
                  // color: Colors.yellow,
                  child: TextFormField(
                    maxLines: 20,
                    cursorHeight: 20,
                    cursorColor: Colors.blue[600],
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 10,
                        right: 15,
                      ),
                      isCollapsed: false,
                      enabled: true,
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: 'Compose email',
                      hintStyle: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

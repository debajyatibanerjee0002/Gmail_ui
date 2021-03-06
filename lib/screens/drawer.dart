import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../custom_list_tile.dart';

class DrawerWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: 15, left: 10, right: 10),
        children: [
          Text(
            'Gmail',
            style: TextStyle(
              color: Colors.red,
              fontSize: 25,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 10),
          Divider(
            thickness: 1,
          ),
          SizedBox(height: 10),
          CustomListileoneTwo('All inboxes', Icons.all_inbox, context, '',
              Colors.transparent, Colors.black),
          SizedBox(height: 10),
          Divider(
            thickness: 1,
          ),
          SizedBox(height: 10),
          CustomListileoneThree('Primary', Icons.inbox, context, '99+',
              Colors.transparent, Colors.red[800]),
          SizedBox(height: 10),
          CustomListileoneTwo('Social', Icons.people_alt_outlined, context,
              '81 new', Colors.blue, Colors.white),
          SizedBox(height: 10),
          CustomListileoneTwo('Promotions', FontAwesomeIcons.tag, context,
              '99+ new', Colors.green[700], Colors.white),
          SizedBox(height: 10),
          Text('ALL LABELS'),
          SizedBox(height: 10),
          CustomListileoneTwo('Starred', FontAwesomeIcons.star, context,
              '3 new', Colors.transparent, Colors.black),
          SizedBox(height: 10),
          CustomListileoneTwo('Snoozed', FontAwesomeIcons.clock, context,
              '10 new', Colors.transparent, Colors.black),
          SizedBox(height: 10),
          CustomListileoneTwo('Important', FontAwesomeIcons.arrowRight, context,
              '99+', Colors.transparent, Colors.black),
          SizedBox(height: 10),
          CustomListileoneTwo('Sent', Icons.send_outlined, context, '20',
              Colors.transparent, Colors.black),
          SizedBox(height: 10),
          CustomListileoneTwo('Scheduled', Icons.schedule_send, context, '',
              Colors.transparent, Colors.black),
          SizedBox(height: 10),
          CustomListileoneTwo('OutBox', Icons.outbox, context, '',
              Colors.transparent, Colors.black),
          SizedBox(height: 10),
          CustomListileoneTwo('Drafts', Icons.file_copy_outlined, context, '30',
              Colors.transparent, Colors.black),
          SizedBox(height: 10),
          CustomListileoneTwo('All mail', Icons.all_inbox, context, '99+',
              Colors.transparent, Colors.black),
          SizedBox(height: 10),
          CustomListileoneTwo('Spam', Icons.error_outline, context, '47',
              Colors.transparent, Colors.black),
          SizedBox(height: 10),
          CustomListileoneTwo('Bin', Icons.delete_outline, context, '99+',
              Colors.transparent, Colors.black),
          SizedBox(height: 10),
          Text('GOOGLE APPS'),
          SizedBox(height: 10),
          CustomListileoneTwo('Calendar', Icons.calendar_today, context, '',
              Colors.transparent, Colors.black),
          SizedBox(height: 10),
          CustomListileoneTwo('Contact', Icons.people_outline_rounded, context,
              '', Colors.transparent, Colors.black),
          SizedBox(height: 10),
          Divider(
            thickness: 1,
          ),
          SizedBox(height: 10),
          CustomListileoneTwo('Settings', Icons.settings, context, '',
              Colors.transparent, Colors.black),
          SizedBox(height: 10),
          CustomListileoneTwo('Help and feedback', Icons.help_outline, context,
              '', Colors.transparent, Colors.black),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

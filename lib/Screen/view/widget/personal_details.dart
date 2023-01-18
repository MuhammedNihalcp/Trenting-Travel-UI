import 'package:flutter/material.dart';

import 'package:tranting_travel_ui/core/color/colors.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/image/person_image.webp'),
        radius: 40,
      ),
      title: Text(
        'Welcome home',
        style: TextStyle(color: colorGrey),
      ),
      subtitle: Text(
        'Uthman Saleh',
        style: TextStyle(
          color: colorBlack,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Icon(
        Icons.circle_notifications_outlined,
        size: 28,
        color: colorBlack,
      ),
    );
  }
}

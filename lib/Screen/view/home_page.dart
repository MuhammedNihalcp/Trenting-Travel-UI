import 'package:flutter/material.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';
import 'package:tranting_travel_ui/core/size/sizes.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundC,
      body: SafeArea(
        child: Column(
          children: const [
            kHeight10,
            ListTile(
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
            )
          ],
        ),
      ),
    );
  }
}

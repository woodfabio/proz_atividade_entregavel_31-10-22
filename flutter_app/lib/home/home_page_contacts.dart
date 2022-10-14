import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_app/home/home_controller.dart';
import 'package:flutter_app/widgets/contact_list_tile.dart';
import 'package:flutter_app/widgets/my_fab_button.dart';
import 'package:flutter_app/widgets/profile_picture.dart';
import 'package:flutter_app/widgets/contact.dart';

class HomePageContacts extends StatelessWidget {
  HomePageContacts({
    super.key,
    });
 
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts App'),  
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: controller.contacts.map(
            (e) => ContactListTile(
              name: e.name, 
              jobTitle: e.jobTitle,
              url: e.url,
              phone: e.phone,
              ),
            ).toList(),
        ),
      ),
    );  
  }
}


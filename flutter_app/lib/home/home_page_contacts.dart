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
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts App'),  
      ),
      body: ListView.builder(
        itemCount: controller.contacts.length,
        padding: const EdgeInsets.all(8.0),
        controller: scrollController,
        itemBuilder: (context, index) {
          if (index == controller.contacts.length - 1) {
            return Column(
              children: [
                ContactListTile(
                contact: controller.contacts[index],
              ),
              TextButton(
                onPressed: () {
                  scrollController.animateTo(
                    0,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeIn,
                    );
                },
                child: const Text(
                  'Voltar ao topo'
                  ),
                ),
              ],
            );
          }
            return ContactListTile(
                contact: controller.contacts[index],
              );
                   
        }
      ),
    );  
  }
}


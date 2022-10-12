import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/contact_list_tile.dart';
import 'package:flutter_app/widgets/my_fab_button.dart';
import 'package:flutter_app/widgets/profile_picture.dart';
import 'package:flutter_app/widgets/contact.dart';

class HomePageContacts extends StatefulWidget {
  const HomePageContacts({
    super.key, 
    required this.title,
    this.contacts,
    });

  final String title;
  List<Contact> contacts = [];

  @override
  State<HomePageContacts> createState() => _HomePageContactsState();
}

class _HomePageContactsState extends State<HomePageContacts> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),  
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ContactListTile(
            name: 'Fábio Wood',
            jobTitle: 'Desenvolvedor',
            url: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/d7bb2733-7dfe-4330-8419-84b38b2319fd/d5sey10-a2f1faa7-7922-4e95-9acf-7b6ccc8ce2e8.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2Q3YmIyNzMzLTdkZmUtNDMzMC04NDE5LTg0YjM4YjIzMTlmZFwvZDVzZXkxMC1hMmYxZmFhNy03OTIyLTRlOTUtOWFjZi03YjZjY2M4Y2UyZTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.mXiPJsnOJ5HvEXgpC3j3Z1mwdq8zzXKYNt1kXer-TaM',
          ),
          ContactListTile(
            name: 'Carlos',
            jobTitle: 'Topo que gira',
            ),
      ],)
    );  
  }
}


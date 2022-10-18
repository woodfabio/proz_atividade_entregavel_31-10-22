
import 'package:flutter/material.dart';
import 'package:flutter_app/home/home_controller.dart';
import 'package:flutter_app/widgets/contact_list_tile.dart';

class HomePageGridView extends StatelessWidget {
  HomePageGridView ({
    super.key,
  });

  final controller = HomeController();
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final ScrollController = PrimaryScrollController.of(context)!;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contatos'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: controller.contacts.length,
        itemBuilder: (context, index) {
          return ContactListTile(contact: controller.contacts[index], isSquare: true);
        }
      ),
    );
  }

}
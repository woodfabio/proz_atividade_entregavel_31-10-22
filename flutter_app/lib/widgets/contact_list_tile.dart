import 'package:flutter/material.dart';

class ContactListTile extends StatelessWidget {
  ContactListTile({
    Key? key,
    required this.name,
    required this.jobTitle,this.url
  }) : super(key: key);

  final String name;
  final String jobTitle;
  String? url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 65.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.grey.shade300,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CircleAvatar(
                  backgroundImage: url != null ?
                                  NetworkImage(url!) :
                                  NetworkImage('https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80',),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name),
                        Text(jobTitle,
                          style: TextStyle(
                          fontSize: 12.0,
                          ),
                        ),
                      ]
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
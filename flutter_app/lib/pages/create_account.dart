
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CreateAccount extends StatefulWidget {
  const CreateAccount({
    super.key,
  })

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Registre-se no ContactApp',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 8.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const TextField(
                decoration: InputDecoration(
                  label: Text('Nome'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    )
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
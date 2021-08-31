import 'package:alura_projeto/screens/contacts_form.dart';
import 'package:flutter/material.dart';

class Contactlist extends StatelessWidget {
  const Contactlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text(
                'Alex',
                style: TextStyle(fontSize: 24),
              ),
              subtitle: Text(
                '1000',
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => ContactsForm(),
                ),
              )
              .then((newContact) => debugPrint(newContact));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'package:alura_projeto/database/app_database.dart';
import 'package:alura_projeto/models/contact.dart';
import 'package:alura_projeto/screens/contacts_form.dart';
import 'package:flutter/material.dart';

class Contactlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: FutureBuilder<List<Contact>>(
        initialData: [],
        future: Future.delayed(Duration(seconds: 1)).then((value) => findAll()) ,
        builder: (context, snapshot) {
          final List<Contact> contacts = snapshot.data as List<Contact>;
          return ListView.builder(
            itemBuilder: (context, index) {
              final Contact contact = contacts[index];
              return _ContactItem(contact);
            },
            itemCount: contacts.length,
          );
        },
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

class _ContactItem extends StatelessWidget {
  final Contact contact;

  _ContactItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          contact.name.toString(),
          style: TextStyle(fontSize: 24),
        ),
        subtitle: Text(
          contact.account.toString(),
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

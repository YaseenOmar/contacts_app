import 'package:contacts_app/models/contact_model.dart';
import 'package:contacts_app/widgets/contact.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Contact> _contacts = [
    Contact('Ahmed', '059445646'),
    Contact('Yaser', '05944222'),
    Contact('Mousa', '05944444445'),
    Contact('Khaled', '0594411152'),
    Contact('Nour', '0594411156564'),
    Contact('Saeed', '059111445646'),
    Contact('Basim', '059445641116'),
    Contact('Ahmed', '059445646'),
    Contact('Yaser', '05944222'),
    Contact('Mousa', '05944444445'),
    Contact('Khaled', '0594411152'),
    Contact('Nour', '0594411156564'),
    Contact('Saeed', '059111445646'),
    Contact('Basim', '059445641116'),
    Contact('Ahmed', '059445646'),
    Contact('Yaser', '05944222'),
    Contact('Mousa', '05944444445'),
    Contact('Khaled', '0594411152'),
    Contact('Nour', '0594411156564'),
    Contact('Saeed', '059111445646'),
    Contact('Basim', '059445641116'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade400,
        centerTitle: true,
        title: Text(
          'Contacts ',
          style: TextStyle(
            fontSize: 32
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ContatctItem(
              name: _contacts[index].name,
              phone: _contacts[index].num,
          );
          },
        itemCount: _contacts.length,

      ),
    );
  }
}



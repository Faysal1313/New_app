import 'package:flutter/material.dart';

class Listviewdb extends StatefulWidget {
  const Listviewdb({Key? key}) : super(key: key);

  @override
  State<Listviewdb> createState() => _ListviewdbState();
}

class _ListviewdbState extends State<Listviewdb> {
  List<UserModel> users = [
    UserModel(id: 1, name: 'ahmed', phone: '+0121255454'),
    UserModel(id: 2, name: 'mohamed', phone: '+015454454'),
    UserModel(id: 1, name: 'Fasyal', phone: '+014544'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItems(users[index]),
          separatorBuilder: (context, index) => Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey[300],
              ),
          itemCount: users.length),
    );
  }

  Widget buildUserItems(UserModel users) {
    return (Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            child: Text(
              '${users.id}',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${users.name}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '${users.phone}',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

class UserModel {
  final int id;
  final String name;
  final String phone;
  UserModel({
    required this.id,
    required this.name,
    required this.phone,
  });
}

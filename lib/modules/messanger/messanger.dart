import 'dart:ui';

import 'package:flutter/material.dart';

class Messanger_screen extends StatefulWidget {
  const Messanger_screen({Key? key}) : super(key: key);

  @override
  State<Messanger_screen> createState() => _Messanger_screenState();
}

class _Messanger_screenState extends State<Messanger_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 20,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey[300]),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('search'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => builedStoryItems(),
              separatorBuilder: (context, index) => SizedBox(
                width: 5,
              ),
              itemCount: 1,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => builedchatItems(),
                separatorBuilder: (context, index) => SizedBox(
                      height: 5,
                    ),
                itemCount: 30),
          )
        ]),
      ),
    );
  }

  Widget builedchatItems() {
    return (Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 5, end: 5),
              child: CircleAvatar(
                radius: 6,
                backgroundColor: Colors.green,
              ),
            )
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'mia jonia zokro mia jonia zokro mia jonia zokro',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'hello my name is long  hello my name is long ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text('08:00 am'),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }

  Widget builedStoryItems() {
    return (Container(
      child: Row(
        children: [
          Container(
            width: 50,
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(bottom: 5, end: 5),
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'miadd jonia zokro',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(bottom: 5, end: 5),
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'mia jonia zokro',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(bottom: 5, end: 5),
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'mia jonia zokro',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(bottom: 5, end: 5),
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'mia jonia zokro',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(bottom: 5, end: 5),
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'mia jonia zokro',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(bottom: 5, end: 5),
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'mia jonia zokro',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(bottom: 5, end: 5),
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'mia jonia zokro',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(bottom: 5, end: 5),
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'mia jonia zokro',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(bottom: 5, end: 5),
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'mia jonia zokro',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

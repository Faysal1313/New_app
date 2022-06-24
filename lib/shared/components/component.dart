import 'dart:io';

import 'package:flutter/material.dart';
import 'package:udemy/shared/components/cubit/cubit.dart';

Widget defaulteButton({
  double width = double.infinity,
  Color backGround = Colors.blue,
  required Function function,
  required String txt,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backGround,
      ),
      width: width,
      child: MaterialButton(
        height: 50,
        onPressed: () {
          function;
        },
        child: Text(
          txt.toUpperCase(),
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultFromField({
  required TextEditingController controller,
  required TextInputType type,
  required String txt,
  required IconData prefiex,
  IconData? suffix,
  bool IsPassword = false,
  Function? suffixPress,
  Function? ontabe,
}) =>
    TextField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      obscureText: IsPassword,
      onTap: ontabe != null ? () {} : null,
      decoration: InputDecoration(
        labelText: txt,
        prefixIcon: Icon(
          prefiex,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                icon: Icon(suffix),
                onPressed: () {
                  suffixPress;
                },
              )
            : null,
        border: OutlineInputBorder(),
      ),
    );
// Widget buledTaskItem(Map model) => Container(
//       //2-main container
//       child: Row(children: [
//         CircleAvatar(
//           radius: 40,
//           child: Text('${model['time']}'),
//         ),
//         SizedBox(
//           width: 20,
//         ),
//         Expanded(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(
//                 '${model['title']}',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 '${model['date']}',
//                 style: TextStyle(fontSize: 13, color: Colors.grey),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           width: 20,
//         ),
//         IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.check_box),
//           color: Colors.green,
//         ),
//         IconButton(
//             onPressed: () {}, icon: Icon(Icons.archive), color: Colors.black45)
//       ]),
//     );

Widget buledTaskItem(Map model, context) => Dismissible(
    key: Key(model['id'].toString()),
    child: Container(
      //2-main container
      child: Row(children: [
        CircleAvatar(
          radius: 40,
          child: Text('${model['time']}'),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${model['title']}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '${model['date']}',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.check_box),
          color: Colors.green,
        ),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.archive), color: Colors.black45)
      ]),
    ),
    onDismissed: (direction) {
      AppCubit.get(context).deleteData(id: model['id']);
    });
Widget buildArticalesItems(article) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage('${article['urlToImage']}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              height: 120,
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      '${article['title']}',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    '${article['publishedAt']}',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

Widget myDivider() => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        height: 1,
        color: Colors.grey[300],
      ),
    );

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:udemy/shared/components/component.dart';
import 'package:udemy/shared/components/cubit/cubit.dart';
import 'package:udemy/shared/components/cubit/states.dart';

import '../../shared/components/constance.dart';

class NewTaskScreen extends StatefulWidget {
  NewTaskScreen({Key? key}) : super(key: key);

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  var titleController = TextEditingController();
  var dateController = TextEditingController();
  var timeController = TextEditingController();

  //var scaffoldKey = GlobalKey<ScaffoldState>();
  //List<Map> tasks = [];
  // @override
  // void initState() {
  // super.initState();
  //  createDatbase();
  //  print('statr project');
  //}

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit task = AppCubit.get(context);

        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            //main Column
            children: [
              Container(
                //1-main container
                color: Colors.grey[200],
                child: Column(
                  children: [
                    Text(
                      'New Task',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    defaultFromField(
                        controller: titleController,
                        type: TextInputType.text,
                        txt: ('Task Title'),
                        prefiex: Icons.title),
                    SizedBox(
                      height: 10,
                    ),
                    defaultFromField(
                        controller: dateController,
                        type: TextInputType.datetime,
                        ontabe: () {
                          print('object');
                        },
                        txt: ('Time Title'),
                        prefiex: Icons.timelapse_rounded),
                    SizedBox(
                      height: 10,
                    ),
                    defaultFromField(
                        controller: timeController,
                        type: TextInputType.datetime,
                        ontabe: () {
                          print('object');
                        },
                        txt: ('Time'),
                        prefiex: Icons.timelapse_rounded),
                    ElevatedButton(
                      onPressed: () {
                        print(titleController.text);
                        task.insertDatabase(
                            title: titleController.text,
                            date: dateController.text,
                            time: timeController.text);
                      },
                      child: Text('insert into'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    color: Colors.grey[100],
                    height: 300,
                    child: ListView.separated(
                      itemBuilder: (context, index) =>
                          buledTaskItem(task.tasks[index], context),
                      separatorBuilder: (context, index) => Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey[130],
                      ),
                      itemCount: task.tasks.length,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  // //==========================
  // void createDatbase() async {
  //   database = await openDatabase(
  //     'task.db',
  //     version: 1,
  //     onCreate: (database, version) {
  //       print('data base had ben created');
  //       database
  //           .execute(
  //               'create table task (id integer primary key,title text,date text,time text,states text)')
  //           .then((value) {
  //         print('creat table');
  //       }).catchError((error) {
  //         print('error in creat table ${error.toString()}');
  //       });
  //     },
  //     onOpen: (database) {
  //       print('database is opened');
  //       getDataFromDatabase(database).then((value) {
  //         tasks = value;
  //         print(tasks);
  //         print(tasks[1]);
  //         print(tasks[1]['title']);
  //         print(tasks[1]['date']);
  //         print(tasks[1]['time']);
  //       });
  //     },
  //   );
  // }

  // Future insertDatabase({
  //   required String title,
  //   required String date,
  //   required String time,
  // }) async {
  //   return await database!.transaction((txn) async {
  //     return await txn
  //         .rawInsert(
  //             'insert into task(title,date,time,states)values("$title","$date","$time","new")')
  //         .then((value) {
  //       print('$value inserted successfully');
  //       getDataFromDatabase(database).then((value) {
  //         setState(() {
  //           tasks = value;
  //           print(tasks);
  //         });
  //       });
  //     }).catchError((error) {
  //       print('error install record in rows ${error.toString()}');
  //     });
  //     return null;
  //   });
  // }

  // Future<List<Map>> getDataFromDatabase(database) async {
  //   return await database!.rawQuery('select * from task');
  // }
}

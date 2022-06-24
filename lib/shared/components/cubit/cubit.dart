import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/shared/components/cubit/states.dart';

import '../../../modules/archive_task/archive_task.dart';
import '../../../modules/done_task/done_task_screen.dart';
import '../../../modules/new_tasks/new_tasks_screen.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  Database? database;
  List<Map> tasks = [];
  int current_index = 0;
  List<Widget> screen = [
    NewTaskScreen(),
    doneTaskScreen(),
    ArchiveTaskScreen(),
  ];
  List<String> title = ['new tasks', 'Done Tasks', 'Archive Tasks'];
  void changeEndix(int index) {
    current_index = index;
    emit(AppChangeButtonNavBarState());
  }

  //==========================
  void createDatbase() {
    openDatabase(
      'task.db',
      version: 1,
      onCreate: (database, version) {
        print('data base had ben created');
        database
            .execute(
                'create table task (id integer primary key,title text,date text,time text,states text)')
            .then((value) {
          print('creat table');
        }).catchError((error) {
          print('error in creat table ${error.toString()}');
        });
      },
      onOpen: (database) {
        print('database is opened');
        getDataFromDatabase(database).then((value) {
          tasks = value;
          print(tasks);
          emit(AppGetDatabaseState());
        });
      },
    ).then((value) {
      database = value;
      emit(AppCreateDatabaseState());
    });
  }

  insertDatabase({
    required String title,
    required String date,
    required String time,
  }) async {
    await database!.transaction((txn) async {
      return await txn
          .rawInsert(
              'insert into task(title,date,time,states)values("$title","$date","$time","new")')
          .then((value) {
        print('$value inserted successfully');
        emit(AppInsertDatabaseState());
        //get data
        getDataFromDatabase(database).then((value) {
          tasks = value;
          print(tasks);
          emit(AppGetDatabaseState());
        });
      }).catchError((error) {
        print('error install record in rows ${error.toString()}');
      });
      return null;
    });
  }

  Future<List<Map>> getDataFromDatabase(database) async {
    return await database!.rawQuery('select * from task');
  }

  void deleteData({
    required int id,
  }) async {
    await database!
        .rawDelete('DELETE FROM TASK WHERE id =?', [id]).then((value) {
      print('delete');
      emit(AppDeleteDatabaseState());
      getDataFromDatabase(database).then((value) {
        tasks = value;
        print(tasks);
        emit(AppGetDatabaseState());
      });
    });
  }
}

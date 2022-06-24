import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:udemy/modules/archive_task/archive_task.dart';
import 'package:udemy/modules/done_task/done_task_screen.dart';
import 'package:udemy/modules/new_tasks/new_tasks_screen.dart';
import 'package:path/path.dart';
import 'package:udemy/shared/components/cubit/cubit.dart';

import '../../shared/components/constance.dart';
import '../../shared/components/cubit/states.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  //Database? database;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  // @override
  // void initState() {
  //   super.initState();
  //   createDatbase();
  //   print('statr project');
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AppCubit()..createDatbase(),
        child: BlocConsumer<AppCubit, AppState>(
          listener: (context, state) {},
          builder: (context, state) {
            AppCubit cubit = AppCubit.get(context);
            return Scaffold(
              key: scaffoldKey,
              appBar: AppBar(
                title: Text(cubit.title[cubit.current_index]),
              ),
              body: cubit.screen[cubit.current_index],

              // floatingActionButton: FloatingActionButton(
              //     onPressed: () {
              //       scaffoldKey.currentState.showBottomSheet(
              //         (context) => Container(
              //         width: double.infinity,
              //         height: 120,
              //         color: Colors.red,
              //       ),
              //       );
              //     },
              floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    //print('insert');
                    //createDatbase();
                    //print('statr project');
                  },
                  child: Icon(Icons.add)),
              bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: cubit.current_index,
                  onTap: (index) {
                    // setState(() {
                    cubit.changeEndix(index);
                    // });
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.menu), label: 'new task'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.check), label: 'Done'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.archive_outlined), label: 'Archive'),
                  ]),
            );
          },
        ));
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udemy/layout/newapp/news_layout.dart';
import 'package:udemy/layout/todoapp/home_layout.dart';
import 'package:udemy/modules/counter/counter.dart';
//import 'package:udemy/layout/todolayout/home_layout.dart';
import 'package:udemy/modules/bmiscreen/bmi_result.dart';
import 'package:udemy/modules/bmi_screen/bmiscreen.dart';
import 'package:udemy/modules/listview/listviewdb.dart';
import 'package:udemy/modules/login/login_screen.dart';
import 'package:udemy/modules/messanger/messanger.dart';
import 'package:udemy/shared/bloc_observer.dart';
import 'package:udemy/shared/network/remote/dio_helper.dart';

void main() {
  BlocOverrides.runZoned(
    () {
      DioHelper.intit();
      // Use cubits...
      runApp(MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.deepOrange,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.deepOrange,
            elevation: 20),
      ),
      // themeMode: ThemeMode.dark,
      // home: Login_screen(),
      //  home: HomeLayout(),
      home: NewsLayout(),
      //    home: Counter(),
//      home: Messanger_screen(),
      //  home: Listviewdb(),
      //   home: BmiScreen(),
      // home: Bmi_result(),
    );
  }
}

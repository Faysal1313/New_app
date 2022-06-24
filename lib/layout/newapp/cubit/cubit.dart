import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/layout/newapp/cubit/states.dart';
import 'package:udemy/modules/business/business.dart';
import 'package:udemy/modules/science/science.dart';
import 'package:udemy/modules/settings/setting.dart';
import 'package:udemy/modules/sports/sports.dart';

import '../../../shared/network/remote/dio_helper.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());
  static NewsCubit get(context) => BlocProvider.of(context);
  int current_index = 0;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.business),
      label: 'Business',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.science),
      label: 'Science',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.sports),
      label: 'Sport',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'settings',
    ),
  ];
  List<Widget> screens = [Business(), Science(), Sport(), Setting()];
  void changeBottomNavbar(int index) {
    current_index = index;
    if (index == 0) getBusiness();
    if (index == 1) getScince();
    if (index == 2) getSport();

    emit(NewsBottomNaveState());
  }

  List<dynamic> business = [];
  void getBusiness() {
    //3lshan a7'le screen tlef loading....
    emit(NewsLoadingBusinessState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'business',
      'apiKey': 'cca7b9ebed624b4ea36347c95c0eda30'
    }).then((value) {
      //print(value.data['articles'][0]['title']);
      business = value.data['articles'];
      print(business[0]['title']);
      emit(NewsGetBusinessSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(NewsGetBusinessErrorState(error.toString()));
    });
  }

  List<dynamic> science = [];
  void getScince() {
    emit(NewsGetScienceLodingState());

    if (science.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': 'eg',
        'category': 'science',
        'apiKey': 'cca7b9ebed624b4ea36347c95c0eda30'
      }).then((value) {
        //print(value.data['articles'][0]['title']);
        business = value.data['articles'];
        print(business[0]['title']);
        emit(NewsGetScienceSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(NewsGetScienceErrorState(error.toString()));
      });
    } else {
      emit(NewsGetScienceSuccessState());
    }
  }

  List<dynamic> sport = [];
  void getSport() {
    emit(NewsGetSportLodingState());
    if (sport.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': 'eg',
        'category': 'sport',
        'apiKey': 'cca7b9ebed624b4ea36347c95c0eda30'
      }).then((value) {
        //print(value.data['articles'][0]['title']);
        business = value.data['articles'];
        print(business[0]['title']);
        emit(NewsGetSportSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(NewsGetSportErrorState(error.toString()));
      });
    } else {
      emit(NewsGetSportSuccessState());
    }
  }
}

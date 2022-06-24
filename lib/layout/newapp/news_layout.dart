import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/layout/newapp/cubit/cubit.dart';
import 'package:udemy/layout/newapp/cubit/states.dart';
import 'package:udemy/shared/network/remote/dio_helper.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NewsCubit()
          ..getBusiness()
          ..getScince()
          ..getSport(),
        child: BlocConsumer<NewsCubit, NewsStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = NewsCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  'News App',
                ),
                actions: [
                  IconButton(icon: const Icon(Icons.search), onPressed: () {})
                ],
                elevation: 0,
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: cubit.current_index,
                items: cubit.bottomItems,
                onTap: (index) {
                  cubit.changeBottomNavbar(index);
                },
              ),
              body: cubit.screens[cubit.current_index],
            );
          },
        ));
  }
}

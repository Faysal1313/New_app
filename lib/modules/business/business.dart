import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/layout/newapp/cubit/cubit.dart';
import 'package:udemy/layout/newapp/cubit/states.dart';
import 'package:udemy/shared/components/component.dart';

class Business extends StatelessWidget {
  const Business({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsCubit.get(context).business;
        return ListView.separated(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => buildArticalesItems(list[index]),
            separatorBuilder: (context, index) => myDivider(),
            itemCount: 10);
      },
    );
  }
}

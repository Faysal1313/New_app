import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/newapp/cubit/cubit.dart';
import '../../layout/newapp/cubit/states.dart';
import '../../shared/components/component.dart';

class Sport extends StatelessWidget {
  const Sport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NewsCubit()..getSport(),
        child: BlocConsumer<NewsCubit, NewsStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = NewsCubit.get(context);
            return Scaffold(
              body: cubit.screens[cubit.current_index],
            );
          },
        ));
  }
}

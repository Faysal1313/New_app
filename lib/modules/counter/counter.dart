import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/modules/counter/cubit/cubit.dart';
import 'package:udemy/modules/counter/cubit/states.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: ((context, state) {}),
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: Text('Counter')),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      CounterCubit.get(context).plues();
                    },
                    heroTag: 'Muines',
                    mini: false,
                    child: Icon(Icons.minimize_outlined),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    '${CounterCubit.get(context).counter}',
                    style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      CounterCubit.get(context).mines();
                    },
                    heroTag: 'age-',
                    mini: false,
                    child: Icon(Icons.plus_one_rounded),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

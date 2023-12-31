import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_counter_app/counter/cubit/counter_cubit.dart';

import 'view.dart';

class CounterScreen extends StatelessWidget {

   const CounterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // Flutter widget which provides a bloc to its children
    return BlocProvider (
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }

 }
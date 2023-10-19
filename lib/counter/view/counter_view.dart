import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_counter_app/counter/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Counter App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Flutter widget that handles building the widget in response to new state
          BlocBuilder<CounterCubit, int>(
            builder: (context, state) {
              return Text("Counter: $state");
            },
          ),
          const SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () => context.read<CounterCubit>().increment(),
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 10),
              FloatingActionButton(
                onPressed: () => context.read<CounterCubit>().decrement(),
                child: const Icon(Icons.remove),
              ),
            ],
          )
        ],
      ),
    );
  }
}


//  return Scaffold(
//       appBar: AppBar(title: const Text("Counter Bloc App")),
//       body: Column(
//         children: [
//         Center(
//           child: BlocBuilder(
//             builder: (context, state) {
//               return Text("Counter: $state");
//             },
//           ),
//         ),
//         Row(
//           children: [
//             FloatingActionButton(
//               onPressed: () => context.read<CounterCubit>().increment(),
//               child: const Icon(Icons.add),
//             ),
//             FloatingActionButton(
//               onPressed: () => context.read<CounterCubit>().decrement(),
//               child: const Icon(Icons.remove),
//             ),
//           ],
//         )
//       ],
//       ),
//     );
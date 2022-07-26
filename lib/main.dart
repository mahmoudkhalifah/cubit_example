import 'package:cubit2/bussines_logic/cubit/condition_cubit.dart';
import 'package:cubit2/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ConditionCubit(),
        child: const Home(),
      ),
    );
  }
}

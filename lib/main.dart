import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/layout/home_layout.dart';
import 'package:untitled/shared/cubit/cubit.dart';

import 'shared/block_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<AppCubit>(
        create: (context)=> AppCubit()..createDatabase(),
        child: HomeLayout(),
      ),
    );
  }
}

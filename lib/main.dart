import 'package:digital_tasbeeh/home/view/screen/home_screen.dart';
import 'package:digital_tasbeeh/home/view/screen/splash_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home/cubit/home_cubit.dart';
import 'home/view/screen/start_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp(
        home: Starthome(),
      ),
    );
  }
}
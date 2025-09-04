import 'package:digital_tasbeeh/core/style/images_app.dart';
import 'package:digital_tasbeeh/core/style/text_style.dart';
import 'package:digital_tasbeeh/home/cubit/home_cubit.dart';
import 'package:digital_tasbeeh/home/view/widget/card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit cubit = BlocProvider.of(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey.shade800,
            title:  Center(child: Text("سبح", style: text)),
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/img_6.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: cubit.titles.length,
                itemBuilder: (context, index) {
                  return CardWidget(
                    title: cubit.titles[index],
                    image: cubit.images[index],
                    index: index,
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
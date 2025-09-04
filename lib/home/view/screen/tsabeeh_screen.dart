// tsabeeh_screen.dart
import 'package:digital_tasbeeh/core/style/text_style.dart';
import 'package:digital_tasbeeh/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widget/bottom_widget.dart';

class TsabeehScreen extends StatelessWidget {
  const TsabeehScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit cubit = BlocProvider.of(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey.shade900,
            title: Center(
              child: Text(
                cubit.currentTitle,
                style: text.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back, size: 28, color: Colors.white),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cubit.currentImage),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.darken),
              ),
            ),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade900.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.blueGrey.shade700, width: 2),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "عدد التسبيحات",
                      style: text.copyWith(
                          fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey.shade800.withOpacity(0.8),
                      ),
                      child: Text(
                        cubit.count.toString(),
                        style: text.copyWith(
                            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ActionCardWidget(
                          title: "زيادة",
                          icon: Icons.keyboard_arrow_up,
                          onTap: cubit.add,
                        ),
                        ActionCardWidget(
                          title: "إعادة ضبط",
                          icon: Icons.restart_alt,
                          onTap: cubit.rest,
                        ),
                        ActionCardWidget(
                          title: "التالي",
                          icon: Icons.arrow_forward_ios,
                          onTap: cubit.next,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black45,
                      ),
                      child: Text(
                        "عدد الدورات: ${cubit.totalCycles}",
                        style: text.copyWith(
                            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

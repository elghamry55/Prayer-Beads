import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/style/text_style.dart';
import '../../cubit/home_cubit.dart';
import '../screen/tsabeeh_screen.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.title, required this.image, required this.index});
  final String title;
  final String image;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<HomeCubit>(context).index = index;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TsabeehScreen()),
        );
      },
      borderRadius: BorderRadius.circular(25),
      splashColor: Colors.blueGrey.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Card(
          color: Colors.blueGrey.shade800.withOpacity(1),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: const BorderSide(color: Colors.blueGrey, width: 2),
          ),
          child: Container(
            height: 90,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Text(
                    title,
                    style: text.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.start,
                  ),
                ),
                const Icon(Icons.arrow_forward_ios, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

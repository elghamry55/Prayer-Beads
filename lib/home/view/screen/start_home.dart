import 'package:digital_tasbeeh/core/style/text_style.dart';
import 'package:digital_tasbeeh/home/view/screen/home_screen.dart';
import 'package:flutter/material.dart';

class Starthome extends StatelessWidget {
  const Starthome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/img_6.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              color: Colors.black.withOpacity(0.6),
              elevation: 25,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: BorderSide(color: Colors.blueGrey.shade300, width: 3),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blueGrey.shade800,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text("فضل الذكر", style: text.copyWith(fontSize: 24)),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      "عن أبي هريرة رضي الله عنه قال : قال رسول الله صلي الله عليه وسلم : "
                          "لأن أقول : سبحان الله و الحمد لله و لا إله إلا الله و الله أكبر "
                          "أحب إلي مما طلعت عليه الشمس . صحيح مسلم.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 35),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey.shade800,
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 8,
                          shadowColor: Colors.black54,
                        ),
                        child: Text(
                          "لنبدأ الآن",
                          style: text.copyWith(fontSize: 22, color: Colors.white,fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

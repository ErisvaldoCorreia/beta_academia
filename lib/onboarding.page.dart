import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: PageView.builder(
        itemCount: 3,
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                SvgPicture.asset('assets/image3.svg', height: 350,),
                Text('Treinamento Diário', style: GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xffec3337)),), //#fcee22
                SizedBox(height: 10,),
                Text('A prática constante dos exercícios promove o equilíbrio fisico e mental, além de melhorar a nossa saúde!', textAlign: TextAlign.center, style: GoogleFonts.nunito(fontSize: 14, color: Colors.grey),)
              ],
            ),
          );
        }
      ),
    );
  }
}

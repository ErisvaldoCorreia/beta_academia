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
        itemCount: content.length,
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                SvgPicture.asset(content[i].image, height: 350,),
                Text(content[i].title, style: GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xffec3337)),), //#fcee22
                SizedBox(height: 10,),
                Text(content[i].description, textAlign: TextAlign.center, style: GoogleFonts.nunito(fontSize: 14, color: Colors.grey),)
              ],
            ),
          );
        }
      ),
    );
  }
}

class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent({this.image, this.title, this.description});
}

List<OnboardingContent> content = [
  OnboardingContent(title: "Treinamento Diário", image: "assets/image1.svg", description: "A prática constante dos exercícios promove o equilíbrio fisico e mental, além de melhorar a nossa saúde!",),
  OnboardingContent(title: "Profissionais Treinados", image: "assets/image3.svg", description: "Aqui virá uma frase de efeito a ser definida ainda",),
  OnboardingContent(title: "Acolhimento", image: "assets/image2.svg", description: "Aqui virá uma frase de efeito a ser definida ainda",),
];
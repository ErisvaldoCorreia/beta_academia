import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
            //color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  //color: Colors.white,
                  margin: EdgeInsets.only(top: 20),
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.height * 0.40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Wall',
                            style: GoogleFonts.nunito(
                              color: Color(0xffec3337),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 5,
                            ),
                          ),
                          Text(
                            'Academia',
                            style: GoogleFonts.nunito(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 5,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Musculação, Dança e Lutas',
                        style: GoogleFonts.nunito(
                          color: Colors.grey[700],
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: buildPageBoard(),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                content.length,
                (index) => buildDots(index),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
            //color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  //color: Colors.red,
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.height * 0.40,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Nova Conta',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.height * 0.40,
                  child: FlatButton(
                    onPressed: () {},
                    color: Color(0xffec3337),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Acessar Conta',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  PageView buildPageBoard() {
    return PageView.builder(
        itemCount: content.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              children: [
                SvgPicture.asset(
                  content[i].image,
                  height: MediaQuery.of(context).size.height * 0.36,
                ),
                Text(
                  content[i].title,
                  style: GoogleFonts.nunito(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffec3337)),
                ), //#fcee22
                SizedBox(
                  height: 10,
                ),
                Text(
                  content[i].description,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(fontSize: 14, color: Colors.grey),
                )
              ],
            ),
          );
        });
  }

  AnimatedContainer buildDots(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      curve: Curves.bounceIn,
      margin: EdgeInsets.only(right: 10.0),
      height: 8,
      width: currentIndex == index ? 25 : 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: currentIndex == index ? Colors.red : Colors.grey,
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
  OnboardingContent(
    title: "Treinamento Diário",
    image: "assets/image1.svg",
    description:
        "A prática constante dos exercícios promove o equilíbrio fisico e mental, além de melhorar a nossa saúde!",
  ),
  OnboardingContent(
    title: "Acolhimento",
    image: "assets/image2.svg",
    description:
        "Aqui virá uma frase de efeito a ser definida ainda! Aqui virá uma frase de efeito a ser definida ainda",
  ),
  OnboardingContent(
    title: "Profissionais Treinados",
    image: "assets/image3.svg",
    description:
        "Aqui virá uma frase de efeito a ser definida ainda! Aqui virá uma frase de efeito a ser definida ainda",
  ),
];

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: const Color(0XFFFFA451),
              height: heightScreen * 0.5776,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 34),
                  child: Image.asset(
                    "assets/images/welcome_screen.png",
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: heightScreen * 0.4224,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 40, 52, 8),
                    child: Text(
                      "Get The Freshest Fruit Salad Combo",
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color(0XFF27214D),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 52, bottom: 74),
                    child: Text(
                      "We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0XFF5D577E),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/authentication'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFFFFA451),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 0,
                        minimumSize: const Size.fromHeight(56),
                      ),
                      child: Text(
                        "Let’s Continue",
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color(0XFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

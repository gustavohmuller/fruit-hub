import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderCompleteScreen extends StatelessWidget {
  const OrderCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Image.asset("assets/images/order_complete_screen.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Text(
                "Order Taken",
                style: GoogleFonts.nunito(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  color: const Color(0XFF27214D),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 64, right: 64, bottom: 56),
              child: Text(
                "Your order have been taken and is being attended to",
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: const Color(0XFF111111),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: SizedBox(
                height: 56,
                width: 208,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFFFFA451),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    "Go home",
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0XFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 56,
              width: 183,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFFFCF6F0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  "Continue shopping",
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFFF08626),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

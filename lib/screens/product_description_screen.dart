import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ProductDescriptionScreen extends StatefulWidget {
  const ProductDescriptionScreen({super.key});

  @override
  State<ProductDescriptionScreen> createState() => _ProductDescriptionScreen();
}

class _ProductDescriptionScreen extends State<ProductDescriptionScreen> {
  int items = 1;
  double total = 0;

  @override
  Widget build(BuildContext context) {
    final NumberFormat numberFormat = NumberFormat.decimalPattern('en_US');

    void increment() {
      setState(() {
        items++;
      });
    }

    void decrease() {
      if (items > 1) {
        setState(() {
          items--;
        });
      }
    }

    double calcTotal() {
      setState(() {
        total = items * 10000;
      });
      return total;
    }

    double heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: const Color(0XFFFFA451),
              height: heightScreen * 0.3567,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0XFFFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              elevation: 0,
                              minimumSize: const Size(75, 32),
                              padding: EdgeInsets.zero,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: Image.asset(
                                      "assets/images/arrow_icon.png"),
                                ),
                                Text(
                                  "Go back",
                                  style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0XFF27214D),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 32),
                      child: Image.asset(
                          "assets/images/big_quinoa_fruit_salad.png"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: heightScreen * 0.6433,
              color: const Color(0XFFFFA451),
              child: Container(
                height: heightScreen * 0.6433,
                decoration: const BoxDecoration(
                  color: Color(0XFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 40, 24, 24),
                      child: Text(
                        "Quinoa Fruit Salad",
                        style: GoogleFonts.nunito(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: const Color(0XFF27214D),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, bottom: 41),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: const Color(0XFFFFF2E7),
                                radius: 16,
                                child: IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: const Icon(
                                      Icons.remove,
                                      size: 16,
                                      color: Color(0XFFFFA451),
                                    ),
                                    onPressed: () => decrease()),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 24, right: 24),
                                child: Text(
                                  "$items",
                                  style: GoogleFonts.nunito(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0XFF27214D),
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: const Color(0XFFFFF2E7),
                                radius: 16,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  icon: const Icon(
                                    Icons.add,
                                    size: 16,
                                    color: Color(0XFFFFA451),
                                  ),
                                  onPressed: () => increment(),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Image.asset(
                                  "assets/images/naiara_icon.png",
                                  color: const Color(0XFF27214D),
                                ),
                              ),
                              Text(
                                numberFormat.format(calcTotal()).toString(),
                                style: GoogleFonts.nunito(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0XFF27214D),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, bottom: 28),
                      child: Container(
                        width: double.infinity,
                        height: 1,
                        color: const Color(0XFFF3F3F3),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 24, right: 24, bottom: 4),
                      child: Text.rich(
                        TextSpan(
                          style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color(0XFF27214D),
                            shadows: [
                              const Shadow(
                                  offset: Offset(0, -12),
                                  color: Color(0XFF27214D))
                            ],
                          ),
                          children: const [
                            TextSpan(
                              text: "This co",
                              style: TextStyle(
                                color: Colors.transparent,
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0XFFFFA451),
                                decorationThickness: 2,
                              ),
                            ),
                            TextSpan(
                              text: "mbo contains:",
                              style: TextStyle(
                                color: Colors.transparent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, bottom: 12),
                      child: Wrap(
                        spacing: 8,
                        runSpacing: -8,
                        children: [
                          Chip(
                            label: Text(
                              'Red Quinoa',
                              style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0XFF403E3E),
                              ),
                            ),
                            backgroundColor: const Color(0XFFFAFAFA),
                          ),
                          Chip(
                            label: Text(
                              'Lime',
                              style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0XFF403E3E),
                              ),
                            ),
                            backgroundColor: const Color(0XFFFAFAFA),
                          ),
                          Chip(
                            label: Text(
                              'Honey',
                              style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0XFF403E3E),
                              ),
                            ),
                            backgroundColor: const Color(0XFFFAFAFA),
                          ),
                          Chip(
                            label: Text(
                              'Blueberries',
                              style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0XFF403E3E),
                              ),
                            ),
                            backgroundColor: const Color(0XFFFAFAFA),
                          ),
                          Chip(
                            label: Text(
                              'Mango',
                              style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0XFF403E3E),
                              ),
                            ),
                            backgroundColor: const Color(0XFFFAFAFA),
                          ),
                          Chip(
                            label: Text(
                              'Strawberries',
                              style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0XFF403E3E),
                              ),
                            ),
                            backgroundColor: const Color(0XFFFAFAFA),
                          ),
                          Chip(
                            label: Text(
                              'Fresh Mint',
                              style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0XFF403E3E),
                              ),
                            ),
                            backgroundColor: const Color(0XFFFAFAFA),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, bottom: 14),
                      child: Container(
                        width: double.infinity,
                        height: 1,
                        color: const Color(0XFFF3F3F3),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, bottom: 33),
                      child: Text(
                        "If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you make",
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: const Color(0XFF333333),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0XFFFFF7F0),
                            radius: 24,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: const Icon(
                                Icons.favorite_border,
                                size: 24,
                                color: Color(0XFFFFA451),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          const SizedBox(width: 60),
                          Flexible(
                            child: ElevatedButton(
                              onPressed: () => Navigator.popAndPushNamed(context, '/order_list', arguments: items),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0XFFFFA451),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                elevation: 0,
                                minimumSize: const Size.fromHeight(56),
                              ),
                              child: Text(
                                "Add To Basket",
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
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

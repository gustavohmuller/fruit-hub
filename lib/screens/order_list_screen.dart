import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({super.key});

  @override
  State<OrderListScreen> createState() => _OrderListScreen();
}

class _OrderListScreen extends State<OrderListScreen> {
  @override
  Widget build(BuildContext context) {
    int items = ModalRoute.of(context)!.settings.arguments as int;
    final NumberFormat numberFormat = NumberFormat.decimalPattern('en_US');
    double total = items * 10000;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: const Color(0XFFFFA451),
              height: heightScreen * 0.1675,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, bottom: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
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
                                padding: EdgeInsets.zero),
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
                      const SizedBox(width: 32),
                      Text(
                        "My Basket",
                        style: GoogleFonts.nunito(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: const Color(0XFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
              child: SizedBox(
                height: heightScreen * 0.8325,
                child: ListView.builder(
                  itemCount: items > 0 ? 1 : 0,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 65,
                              height: 64,
                              decoration: BoxDecoration(
                                color: const Color(0XFFFFFAEB),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0XFF808080)
                                        .withOpacity(0.1),
                                    blurRadius: 20,
                                    offset: const Offset(0, 15),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                  "assets/images/small_quinoa_fruit_salad.png"),
                            ),
                            const SizedBox(width: 16),
                            SizedBox(
                              height: 65,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Quinoa fruit salad",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0XFF333333),
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    "${items}packs",
                                    style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: const Color(0XFF000000),
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/naiara_icon.png",
                                        color: const Color(0XFF27214D),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        numberFormat.format(total),
                                        style: GoogleFonts.nunito(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0XFF27214D),
                                        ),
                                      ),
                                      const SizedBox(width: 33),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: const Color(0XFFFFF2E7),
                          radius: 16,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                              Icons.remove,
                              size: 24,
                              color: Color(0XFFFFA451),
                            ),
                            onPressed: () {
                              setState(() {
                                items = 0;
                              });
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Container(
          color: const Color(0XFFFAFAFA),
          height: heightScreen * 0.2044,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 47),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: const Color(0XFF333333),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/naiara_icon.png",
                          color: const Color(0XFF27214D),
                          scale: 0.76,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          numberFormat.format(total),
                          style: GoogleFonts.nunito(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: const Color(0XFF27214D),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 18),
                ElevatedButton(
                  onPressed: () {
                    if(items > 0){
                      Navigator.popAndPushNamed(context, '/order_complete');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFFFFA451),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                      fixedSize: const Size(199, 56)),
                  child: Text(
                    "Checkout",
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0XFFFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

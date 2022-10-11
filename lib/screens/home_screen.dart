import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> filterButtonName = [
    "All",
    "Salad Combo",
    "Berry Combo",
    "Mango Berry"
  ];

  final List<bool> _selectedOptions = <bool>[true, false, false];

  @override
  Widget build(BuildContext context) {
    String userName = ModalRoute.of(context)!.settings.arguments as String;
    int items = 0;
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
        elevation: 0,
        titleSpacing: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24, right: 16),
          child: IconButton(
            icon: Image.asset("assets/images/menu_button.png"),
            color: const Color(0XFF070648),
            padding: EdgeInsets.zero,
            onPressed: () {},
          ),
        ),
        title: Text(
          "Welcome, $userName",
          style: GoogleFonts.nunito(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: const Color(0XFF27214D),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0XFFFFFFFF),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    color: Colors.grey,
                    spreadRadius: 0,
                    offset: Offset(0, 0.5),
                  )
                ],
              ),
              child: CircleAvatar(
                backgroundColor: const Color(0XFFFFFFFF),
                radius: 24,
                child: IconButton(
                  icon: Image.asset("assets/images/basket_button.png"),
                  padding: EdgeInsets.zero,
                  onPressed: () => Navigator.pushNamed(context, '/order_list',
                      arguments: items),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
            child: Row(
              children: [
                Flexible(
                  child: TextField(
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF5D577E),
                    ),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0XFF86869E),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                            width: 0.0,
                            style: BorderStyle.none,
                          )),
                      hintText: "Search for fruit salad combos",
                      hintStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFFB4B4C0),
                      ),
                      fillColor: const Color(0XFFF5F5F5),
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Container(
                    width: 35,
                    height: 55,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFF7F7FC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    child: IconButton(
                      icon: Image.asset("assets/images/filter_button.png"),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 22, right: 24),
            child: Container(
              height: 32,
              color: const Color(0XFFFFFFFF),
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  for (var i in filterButtonName)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 4),
                      child: createFilterButton(i.toString()),
                    ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 49, right: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0XFF27214D),
                      shadows: [
                        const Shadow(
                            offset: Offset(0, -12), color: Color(0XFF27214D))
                      ],
                    ),
                    children: const [
                      TextSpan(
                        text: "Recom",
                        style: TextStyle(
                          color: Colors.transparent,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0XFFFFA451),
                          decorationThickness: 2,
                        ),
                      ),
                      TextSpan(
                        text: "mended Combo",
                        style: TextStyle(
                          color: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 16, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 161,
                  height: 183,
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0XFF808080).withOpacity(0.1),
                        blurRadius: 20,
                        offset:
                            const Offset(0, 15), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40.5, top: 16),
                        child: Stack(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 84),
                              child: Icon(
                                Icons.favorite_border,
                                color: Color(0XFFFFA451),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Image.asset(
                                  "assets/images/honey_lime_combo.png"),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.95, top: 13, bottom: 8),
                        child: Text(
                          "Honey lime combo",
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color(0XFF27214D),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 16.95),
                          Image.asset("assets/images/naiara_icon.png"),
                          const SizedBox(width: 4),
                          Text(
                            "2,000",
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0XFFF08626),
                            ),
                          ),
                          const SizedBox(width: 39.19),
                          CircleAvatar(
                            backgroundColor: const Color(0XFFFFF2E7),
                            radius: 12,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: const Icon(
                                Icons.add,
                                size: 24,
                                color: Color(0XFFFFA451),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 161,
                  height: 183,
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0XFF808080).withOpacity(0.1),
                        blurRadius: 20,
                        offset:
                            const Offset(0, 15), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40.5, top: 16),
                        child: Stack(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 84),
                              child: Icon(
                                Icons.favorite_border,
                                color: Color(0XFFFFA451),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Image.asset(
                                  "assets/images/berry_mango_combo.png"),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.95, top: 13, bottom: 8),
                        child: Text(
                          "Berry mango combo",
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color(0XFF27214D),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 16.95),
                          Image.asset("assets/images/naiara_icon.png"),
                          const SizedBox(width: 4),
                          Text(
                            "2,000",
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0XFFF08626),
                            ),
                          ),
                          const SizedBox(width: 39.19),
                          CircleAvatar(
                            backgroundColor: const Color(0XFFFFF2E7),
                            radius: 12,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: const Icon(
                                Icons.add,
                                size: 24,
                                color: Color(0XFFFFA451),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 30),
            child: ToggleButtons(
              direction: Axis.horizontal,
              onPressed: (index) {
                setState(
                  () {
                    for (int i = 0; i < _selectedOptions.length; i++) {
                      _selectedOptions[i] = i == index;
                    }
                  },
                );
              },
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              renderBorder: false,
              selectedColor: const Color(0XFF27214D),
              fillColor: const Color(0XFFFFFFFF),
              color: const Color(0xFF253F66).withOpacity(0.3),
              constraints: const BoxConstraints(minHeight: 30),
              isSelected: _selectedOptions,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    "Hottest",
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    "Popular",
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    "New Combo",
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 24, right: 331),
              child: Transform.translate(
                offset: const Offset(0, -6),
                child: Container(
                  width: 38,
                  height: 2,
                  color: const Color(0XFFFFA451),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 18, right: 24),
            child: SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/product_description'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFFFFFCF2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.zero,
                      elevation: 0,
                    ),
                    child: Container(
                      width: 140,
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color(0XFFFFFCF2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 38, top: 12),
                            child: Stack(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 70),
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Color(0XFFFFA451),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Image.asset(
                                      "assets/images/quinoa_fruit_salad.png"),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8, top: 9, bottom: 8),
                            child: Text(
                              "Quinoa fruit salad",
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0XFF27214D),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(width: 8),
                              Image.asset("assets/images/naiara_icon.png"),
                              const SizedBox(width: 4),
                              Text(
                                "10,000",
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0XFFF08626),
                                ),
                              ),
                              const SizedBox(width: 33),
                              CircleAvatar(
                                backgroundColor: const Color(0XFFFFE3C9),
                                radius: 12,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  icon: const Icon(
                                    Icons.add,
                                    size: 24,
                                    color: Color(0XFFEC7B15),
                                  ),
                                  onPressed: () {
                                    items++;
                                  },
                                ),
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      width: 140,
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color(0XFFFEF4F4),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 22, top: 16),
                            child: Stack(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 86),
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Color(0XFFFFA451),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: Image.asset(
                                      "assets/images/tropical_fruit_salad.png"),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8, top: 9.83, bottom: 8),
                            child: Text(
                              "Tropical fruit salad",
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0XFF27214D),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(width: 8),
                              Image.asset("assets/images/naiara_icon.png"),
                              const SizedBox(width: 4),
                              Text(
                                "10,000",
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0XFFF08626),
                                ),
                              ),
                              const SizedBox(width: 33),
                              CircleAvatar(
                                backgroundColor: const Color(0XFFFFE3C9),
                                radius: 12,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  icon: const Icon(
                                    Icons.add,
                                    size: 24,
                                    color: Color(0XFFEC7B15),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 140,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color(0XFFF1EFF6),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35.5, top: 16),
                          child: Stack(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 73),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Color(0XFFFFA451),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Image.asset(
                                    "assets/images/melon_fruit_salad.png"),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8, top: 17, bottom: 8),
                          child: Text(
                            "Melon fruit salad",
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 9, 4, 46),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(width: 8),
                            Image.asset("assets/images/naiara_icon.png"),
                            const SizedBox(width: 4),
                            Text(
                              "10,000",
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0XFFF08626),
                              ),
                            ),
                            const SizedBox(width: 33),
                            CircleAvatar(
                              backgroundColor: const Color(0XFFFFE3C9),
                              radius: 12,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: const Icon(
                                  Icons.add,
                                  size: 24,
                                  color: Color(0XFFEC7B15),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton createFilterButton(String filterButtonName) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0XFFFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        filterButtonName,
        style: GoogleFonts.nunito(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: const Color(0XFF333333),
        ),
      ),
    );
  }
}

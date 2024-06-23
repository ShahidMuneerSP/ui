import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    String name = "Shahid";
    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7FBFC),
        leading: Container(
          margin: const EdgeInsets.only(left: 16, top: 5),
          decoration: const BoxDecoration(
              color: Color(0XFFFFC700), shape: BoxShape.circle),
          height: 32,
          width: 32,
          child: Center(
              child: Text(
            name.isNotEmpty ? name.substring(0, 1) : '',
            style: GoogleFonts.ewert(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
            ),
          )),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            "Pray Rosary",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Color(0xFF142228)),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: const Color(0xFFD0DCE5),
            height: 1.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
          color: const Color(0xFFF7FBFC),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SuggestedIntentionsCard(size: size),
              const SizedBox(
                height: 30,
              ),
              PrayWithoutCommittingWidget(size: size),
              const SizedBox(
                height: 30,
              ),
            ],
          )),
    );
  }
}

class PrayWithoutCommittingWidget extends StatelessWidget {
  const PrayWithoutCommittingWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
      margin: const EdgeInsets.symmetric(horizontal: 28),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFFE9F1EF),
      ),
      height: 88,
      child: Row(
        children: [
          SizedBox(
            width: size.width / 1.6,
            child: const Text(
              "Pray rosary without committing to any intentions",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF5B7A85)),
            ),
          ),
          Container(
            height: 36,
            width: 36,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFFFFFFF),
            ),
            child: Center(
                child: SvgPicture.asset(
              "assets/svg/play.svg",
              height: 16,
              width: 16,
            )),
          )
        ],
      ),
    );
  }
}

class SuggestedIntentionsCard extends StatelessWidget {
  const SuggestedIntentionsCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF7FBFC),
      margin: const EdgeInsets.symmetric(horizontal: 28),
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          const Text(
            "SUGGESTED INTENTIONS",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xFF8DBBD4),
                fontSize: 12,
                letterSpacing: 0.04),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                height: 165,
                width: size.width / 3.2,
                child: Center(
                    child: SvgPicture.asset(
                  "assets/svg/blessed india.svg",
                  width: 100,
                  height: 110,
                )),
              ),
              const Spacer(),
              SizedBox(
                height: 165,
                width: size.width - size.width / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Blessed India",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF142228),
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Pray for the evangelisation of the whole nation and for peace between political",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF5B7A85),
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Center(
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFF36B5D3),
                        ),
                        child: const Center(
                            child: Text(
                          "Commit Rosary",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(
                                0xFFFFFFFF,
                              ),
                              fontSize: 13,
                              fontFamily: 'Estedad'),
                        )),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

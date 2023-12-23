import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({super.key});

  @override
  State<LogoWidget> createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> {
  bool animateYellow = false;
  bool animateBlue = false;
  bool animateGreen = false;
  bool hideTiles = false;
  final Curve _curve = Curves.easeOut;

  @override
  void initState() {
    super.initState();
    animate();
  }

  void animate() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      animateYellow = true;
    });
    await Future.delayed(const Duration(milliseconds: 400));
    setState(() {
      animateBlue = true;
    });
    await Future.delayed(const Duration(milliseconds: 400));
    setState(() {
      animateGreen = true;
    });
    await Future.delayed(const Duration(milliseconds: 600));
    setState(() {
      hideTiles = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            SizedBox(
              width: 230,
              height: 150,
              child: Stack(
                children: [
                  AnimatedPadding(
                    padding: animateYellow
                        ? const EdgeInsets.only(top: 45)
                        : const EdgeInsets.only(top: 0),
                    duration: const Duration(milliseconds: 600),
                    curve: _curve,
                    child: box(Colors.yellow),
                  ),
                  AnimatedPadding(
                    padding: animateBlue
                        ? const EdgeInsets.only(top: 25)
                        : const EdgeInsets.only(top: 0),
                    duration: const Duration(milliseconds: 700),
                    curve: _curve,
                    child: box(Colors.blue),
                  ),
                  AnimatedPadding(
                    padding: animateGreen
                        ? const EdgeInsets.only(left: 120, top: 15)
                        : const EdgeInsets.only(top: 0),
                    duration: const Duration(milliseconds: 900),
                    curve: _curve,
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/logo_white.jpg'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                    ),
                  ),
                  box(Colors.red),
                ],
              ),
            ),
            const SizedBox(width: 10),
            AnimatedOpacity(
              opacity: animateGreen ? 1 : 0,
              duration: const Duration(milliseconds: 800),
              curve: _curve,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'STUDENT',
                    style: GoogleFonts.fingerPaint(
                      fontSize: 55,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'NEXUS',
                    style: GoogleFonts.fingerPaint(
                      fontSize: 55,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget box(Color color) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 400),
      opacity: hideTiles ? 0 : 1,
      child: Container(
        width: 110,
        height: 110,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
      ),
    );
  }
}

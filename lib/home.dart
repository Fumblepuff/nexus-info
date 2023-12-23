import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/feature_tile.dart';
import 'utils/constants.dart';
import 'utils/logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 500,
                child: Row(
                  children: [
                    // Landing Text
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const LogoWidget(),
                          const SizedBox(height: 10),
                          Text(
                            'Empowering Education',
                            style: GoogleFonts.robotoSlab(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Simplifying Connection',
                            style: GoogleFonts.robotoSlab(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Connect, Communicate, Excel.',
                            style: GoogleFonts.robotoSlab(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Landing Image
                    Expanded(
                      child: Container(
                        height: 500,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/hero_render.gif'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Icon Keys
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (var i = 0; i < Constants.iconKeys.length; i++)
                      keyTile(Constants.iconKeys[i]),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // Features
              Wrap(
                children: [
                  for (var i = 0; i < 6; i++)
                    const FeatureTile(
                      title: 'Title',
                      description: 'Description',
                      iconKeys: [0, 2],
                    ),
                ],
              ),
              // Bottom Padding
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget keyTile(Map info) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4.5,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            info['icon'],
            color: Colors.grey,
            size: 18,
          ),
          const SizedBox(width: 20),
          Text(
            info['title'],
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

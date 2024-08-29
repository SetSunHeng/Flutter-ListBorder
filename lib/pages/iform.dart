import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("I Lv u"),
      ),
      body: Column(
        children: [
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 500,
                width: 420,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 400,
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          const Column(
                            children: [
                              Icon(
                                Icons.menu,
                                size: 24,
                                color: Colors.black54,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text("Dashboard",
                                style: GoogleFonts.pacifico(),
                                textScaleFactor: 2,
                              ),
                            ],
                          ),
                          const Column(
                            children: [
                              Icon(
                                Icons.notification_add_outlined,
                                size: 24,
                                color: Colors.black54,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
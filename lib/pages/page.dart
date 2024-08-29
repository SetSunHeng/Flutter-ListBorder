import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_border/lists_UI/list_ui.dart';
import 'package:list_border/widget/scrolling.dart';

class NoBody extends StatelessWidget {
  const NoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 157, 13),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 280,
              width: 420,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 247, 157, 13),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150),
                  bottomLeft: Radius.circular(0),
                )
              ),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        const Column(
                          children: [
                            Icon(Icons.menu,
                              size: 40,
                              color: Colors.black87,
                            )
                          ],
                        ),
                        const SizedBox(width: 25,),
                        Column(
                          children: [
                            Text("Dashboard",
                              style: GoogleFonts.pacifico(),
                              textScaleFactor: 2,
                            )
                          ],
                        ),
                        const SizedBox(width: 160,),
                        const Column(
                          children: [
                            Icon(
                              Icons.notification_add_outlined,
                              size: 30,
                              color: Colors.black87,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 75,
                    padding: const EdgeInsets.all(8),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Search Sofar",
                        suffixIcon: Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25))
                        )
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
        
                  Container(
                    height: 70,
                    width: 400,
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Row(
                          children: [
                            ListScroll(title: "title", isSelected: false),
                            SizedBox(width: 11,),
                            ListScroll(title: "title", isSelected: false),
                            SizedBox(width: 11,),
                            ListScroll(title: "title", isSelected: false),
                            SizedBox(width: 11,),
                            ListScroll(title: "title", isSelected: false),
                            SizedBox(width: 11,),
                            ListScroll(title: "title", isSelected: false),
                            SizedBox(width: 11,),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            Container(
              height: 520,
              width: 420,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 247, 157, 13),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(0),
                )
              ),
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: Stack(
                      children: [
                        Container(
                          height: 220,
                          width: 430,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 247, 157, 13),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            height: 220,
                            width: 390,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              ),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 220,
                                      width: 190,
                                      padding: const EdgeInsets.all(10),
                                      decoration:const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          bottomLeft: Radius.circular(20),
                                        ),
                                      ),
                                      child: Text(
                                        list[index].name,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 220,
                                      width: 200,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomRight:Radius.circular(25),
                                        ), 
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 170,
                          child: Container(
                            height: 50,
                            width: 190,
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(70),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Text(
                              list[index].price,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 220,
                                width: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(list[index].image),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    bottomRight:Radius.circular(25),
                                  ), 
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
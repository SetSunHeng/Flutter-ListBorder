
import 'package:flutter/material.dart';
import 'package:list_border/lists_UI/list_ui.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("App"),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(10),
            child: Stack(
              children: [
                Container(
                  height: 250,
                  width: 430,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 250,
                    width: 390,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 250,
                              width: 190,
                              padding: const EdgeInsets.all(20),
                              decoration:const BoxDecoration(
                                color: Color.fromARGB(248, 251, 214, 3),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
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
                              height: 250,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(list[index].image),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                  topRight:Radius.circular(25),
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
                  top: 190,
                  child: Container(
                    height: 60,
                    width: 190,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(25),
                      ),
                    ),
                    child: Text(
                      list[index].price,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:session_two/compnents/card_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.indigo[900],
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                )),
            child: Column(
              children: [
                //TODO::Row with image and icon
                Stack(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                          "assets/download.jpeg",
                        ),
                      ),
                    ),
                  ],
                ),
                // TODO:: TEXT COLUMN
                Column(
                  children: [
                    Text(
                      "Ahmed Ibrahim",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Amount Due \$1080",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40.0),
                                topRight: Radius.circular(40.0),
                                bottomLeft: Radius.circular(40.0),
                                bottomRight: Radius.circular(40.0),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "On Lease",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                // TODO:: ROW OF CARDS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardItem(Colors.blue, Icons.home, "Property"),

                    CardItem(Colors.lightGreenAccent, Icons.attach_money, "Payments"),

                    CardItem(Colors.indigo, Icons.monetization_on_sharp, "Deposite"),




                  ],
                ),
                
                ElevatedButton(onPressed: (){}, child: Text("invite to collect"))
              ],
            ),
          ),
        ),
        //TODO:: down half of screen
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: const Radius.circular(40.0),
                  bottomLeft: const Radius.circular(40.0),
                )),
          ),
        ),
      ],
    ));
  }
}

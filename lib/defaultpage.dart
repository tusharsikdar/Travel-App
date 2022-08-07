import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/homepage.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({Key? key}) : super(key: key);

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Row(
            children: [
              Container(
                child: Center(
                  child: Text(
                    "C",
                    style: GoogleFonts.dmSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w900
                    )
                  ),
                ),
                height: 30,
                width: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(0xff19B8CD),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "ravel",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.blueGrey[600],
                  // letterSpacing: 3,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enjoy every good\nmoment",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Keep the world adventures forever A way \nto explore our beautiful planet",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w100,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()
                    )
                    );
                  },
                  child: Container(
                    height: 60,
                    width: 130,
                    child: Center(
                      child: Text(
                        'Next',
                        style: GoogleFonts.dmSans(
                          letterSpacing: 3,
                          //fontWeight: FontWeight.w600,
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffEB6957),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          //Image.asset("imags/p1.PNG"),
          Container(
            child: Image.asset("assets/image01.png"),
          ),
        ],
      ),
    );
  }
}

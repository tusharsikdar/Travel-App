import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final itemList=['All','New','Most Viewed','Recommended','Premium','Exotic'];
  var selected=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.density_medium,color: Colors.black),
        actions: const [Padding(
          padding: EdgeInsets.only(right: 18, top: 8),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/image02.jpeg')
          ),
        )],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:35),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "Let's enjoy",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w200
                                  )
                              ),
                            ],
                        ),
                        Text("your vacation!",
                          style: GoogleFonts.dmSans(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          )
                        )
                      ],
                    ),
                  const SizedBox(height: 130)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          prefixIcon: const Icon(Icons.search,size: 30),
                          labelText: 'Search your trip',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -6,
                    left: 290,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff19B8CD),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        transform: Matrix4.rotationZ(99),
                        transformAlignment: Alignment.center,
                        child: const Icon(Icons.tune_rounded,color: Colors.white,size: 33),
                      ),
                    ),
                  )]
              ),
            ),
            SizedBox(
              height: 40,
              //color: Colors.blue,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemCount: itemList.length,
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        setState((){
                          selected=index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                        alignment: Alignment.center,
                        //margin: const EdgeInsets.only(right: 15,top: 5),
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(itemList[index],
                            style: TextStyle(
                                color: selected==index?const Color(0xff19B8CD):Colors.blueGrey,
                                fontSize: 15,
                                fontWeight: FontWeight.w700
                            )
                        ),
                      ),
                    );
                  },

                separatorBuilder: (_,index)=>const SizedBox(width: 5),
              ),
            ),
          ]
        ),
      ),
    );
  }
}

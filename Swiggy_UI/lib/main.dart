import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Swiggy());
}

class Swiggy extends StatelessWidget {
  Swiggy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> restlist = [
      'Bakery restaurants near me',
      'Arabian restaurants near me',
      'biryani restaurants near me',
      'north indian restaurants near me',
      'pizzas restaurants near me',
      'snacks restaurants near me',
      'biryani restaurants near me',
      'snacks restaurants near me',
      'north indian restaurants near me',
      'pizzas restaurants near me',
      'biryani restaurants near me',
      'snacks restaurants near me',
      'north indian restaurants near me',
    ];
    List<String> title = [
      'Hotel Bilal',
      'A2B - Adyar Ananda Bhavan',
      'Liza Restaurant (Halal)',
      'Cakes & Desserts',
      'The BVK Biryani ',
      'Double Roti',
      'Cakes & Desserts',
      'A2B - Adyar Ananda Bhavan',
      'Drunken Monkey',
      'The BVK Biryani ',
      'Liza Restaurant ',
      'Double Roti',
      'Drunken Monkey',
      'The BVK Biryani ',
      'Maalgaadi By Dhaba',
      'Liza Restaurant '
    ];
    List<String> subtitle = [
      'South Indian, North Indian\nAnna Nagar',
      'Burgers, Biryani\nPeriyampet',
      'South Indian, North IndianAnna Nagar',
      'Burgers, Biryani\nPeriyampet',
      'South Indian, North Indian\nAnna Nagar',
      'Burgers, Biryani\nPeriyampet',
      'South Indian, North Indian\nAnna Nagar',
      'Burgers, Biryani\nPeriyampet',
      'South Indian, North IndianAnna Nagar',
      'Burgers, Biryani\nPeriyampet',
      'South Indian, North Indian\nAnna Nagar',
      'Burgers, Biryani\nPeriyampet',
      'South Indian, North Indian\nAnna Nagar',
      'Burgers, Biryani\nPeriyampet',
      'South Indian, North IndianAnna Nagar',
      'Burgers, Biryani\nPeriyampet',
      'South Indian, North Indian\nAnna Nagar',
      'Burgers, Biryani\nPeriyampet',
      'South Indian, North Indian\nAnna Nagar',
      'Burgers, Biryani\nPeriyampet',
      'South Indian, North IndianAnna Nagar',
      'Burgers, Biryani\nPeriyampet',
      'South Indian, North Indian\nAnna Nagar',
      'Burgers, Biryani\nPeriyampet',
      'South Indian, North Indian\nAnna Nagar',
      'Burgers, Biryani\nPeriyampet',
      'South Indian, North Indian\nAnna Nagar',
      'Burgers, Biryani\nPeriyampet',
    ];
    List<String> image = [
      '../assets/gridMenui/biri.png',
      '../assets/gridMenui/Burgerking.png',
      '../assets/gridMenui/Burgerman.png',
      '../assets/gridMenui/cake_1.png',
      '../assets/gridMenui/cake.png',
      '../assets/gridMenui/chik.png',
      '../assets/gridMenui/chillichiken.png',
      '../assets/gridMenui/cka.png',
      '../assets/gridMenui/coffee.png',
      '../assets/gridMenui/dosa.png',
      '../assets/gridMenui/fruitboul.png',
      '../assets/gridMenui/grill.png',
      '../assets/gridMenui/hungester.png',
      '../assets/gridMenui/total.png',
      '../assets/gridMenui/pvr.png',
      '../assets/gridMenui/mamagoto.png'
    ];
    return Scaffold(
        appBar: AppBar(
          title: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Container(
                  height: 200,
                  width: 200,
                  child: Image(image: AssetImage('../assets/swiggy23.jpg')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(300, 0, 0, 0),
                child: Container(
                  width: 400,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for restaurant and foods',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.search)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
                child: Container(
                  child:
                      CircleAvatar(radius: 30, backgroundColor: Colors.amber),
                ),
              )
            ],
          )),
          backgroundColor: Colors.white,
          toolbarHeight: 80,
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Container(
                    height: 150,
                    width: 300,
                    child: Center(
                      child: Text(
                        'Order'
                        ' Food Online',
                        style: GoogleFonts.akayaTelivigala(fontSize: 50),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    height: 500,
                    width: 500,
                    child: Image.asset('../assets/1.png'),
                  ),
                )
              ],
            ),
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40)),
                color: Colors.grey),
          ),
          // ......................................................................>BannerEnd
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 600,
              ),
              child: Text(
                'What\'s on your mind ?',
                style: GoogleFonts.swankyAndMooMoo(
                  fontSize: 50,
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 5),
              height: 300,
              width: 1150,
              decoration: BoxDecoration(boxShadow: kElevationToShadow[5]),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.asset(
                        '../assets/medmenu/Biryani_2.png',
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.asset(
                        '../assets/medmenu/Burger.png',
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.asset(
                        '../assets/medmenu/Cakes.png',
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.asset(
                        '../assets/medmenu/Chinese.png',
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.asset(
                        '../assets/medmenu/Desserts_2.png',
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.asset(
                        '../assets/medmenu/Dosa.png',
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.asset(
                        '../assets/medmenu/Ice_Creams.png',
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.asset(
                        '../assets/medmenu/Idli.png',
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.asset(
                        '../assets/medmenu/Juice.png',
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.asset(
                        '../assets/medmenu/Kebabs.png',
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.asset(
                        '../assets/medmenu/North_Indian_4.png',
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ),
                ],
              )),
          // .............................................................>SmallMenuCard End
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 700,
                bottom: 20,
              ),
              child: Text(
                'Top Restaurant in chennai',
                style: GoogleFonts.b612(fontSize: 30),
              ),
            ),
          ),

          Container(
              height: 350,
              width: 1150,
              color: Colors.white,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 5,
                      bottom: 140,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('../assets/medmenu/bhuhari')),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 200,
                          width: 300,
                          child: ListTile(
                            minVerticalPadding: 210,
                            title: Text(
                              "Hotel Bilal",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'North Indian, Chinese\nRoyapettah3.5 km',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                      bottom: 140,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('../assets/medmenu/kfc')),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 200,
                          width: 300,
                          child: ListTile(
                            minVerticalPadding: 210,
                            title: Text(
                              "KFC",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'Burgers, Biryani\nPeriyampet',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                      bottom: 140,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('../assets/medmenu/mc.png')),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 200,
                          width: 300,
                          child: ListTile(
                            minVerticalPadding: 210,
                            title: Text(
                              "McDonald's",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'North Indian, Chinese\nRoyapettah3.5 km',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                      bottom: 140,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    '../assets/medmenu/fassosrolls.png')),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 200,
                          width: 300,
                          child: ListTile(
                            minVerticalPadding: 210,
                            title: Text(
                              "A2B - Adyar Ananda Bhavan",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'North Indian, Chinese\nRoyapettah3.5 km',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                      bottom: 140,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    '../assets/BigMenu/zyyduavcmpinwpyontgb.jpeg')),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 200,
                          width: 300,
                          child: ListTile(
                            minVerticalPadding: 210,
                            title: Text(
                              "Sangeetha Veg Restaurant",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'North Indian, Chinese\nRoyapettah3.5 km',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                      bottom: 140,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    '../assets/BigMenu/f75bed5b83ac0a8d50acc4b478f2f062.jpeg')),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 200,
                          width: 300,
                          child: ListTile(
                            minVerticalPadding: 210,
                            title: Text(
                              "The BVK Biryani ",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'North Indian, Chinese\nRoyapettah3.5 km',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                      bottom: 140,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    '../assets/BigMenu/dlkj9tdzjf6r72ovkuhh.jpeg')),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 200,
                          width: 300,
                          child: ListTile(
                            minVerticalPadding: 210,
                            title: Text(
                              "Sri Srinivasa (Bhavan)",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'North Indian, Chinese\nRoyapettah3.5 km',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                      bottom: 140,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    '../assets/BigMenu/cxmaeqlyleysefcdx9nk.jpeg')),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 200,
                          width: 300,
                          child: ListTile(
                            minVerticalPadding: 210,
                            title: Text(
                              "Lassi Shop",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'North Indian, Chinese\nRoyapettah3.5 km',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                      bottom: 140,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    '../assets/BigMenu/bogj3f009rjyo7b5omgx.jpeg')),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 200,
                          width: 300,
                          child: ListTile(
                            minVerticalPadding: 210,
                            title: Text(
                              "Aachi Namma Kitchen",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'North Indian, Chinese\nRoyapettah3.5 km',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                      bottom: 140,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    '../assets/BigMenu/ae16f26b314c18697edc30010d4c21a5.jpeg')),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 200,
                          width: 300,
                          child: ListTile(
                            minVerticalPadding: 210,
                            title: Text(
                              "Kakada Ramprasad",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'North Indian, Chinese\nRoyapettah3.5 km',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                      bottom: 140,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('../assets/medmenu/nicice.png')),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 200,
                          width: 300,
                          child: ListTile(
                            minVerticalPadding: 210,
                            title: Text(
                              "Kelvin Scale Creamery",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'North Indian, Chinese\nRoyapettah3.5 km',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                      bottom: 140,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    '../assets/medmenu/palmshore.png')),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 200,
                          width: 300,
                          child: ListTile(
                            minVerticalPadding: 210,
                            title: Text(
                              "Liza Restaurant (Halal)",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'North Indian, Chinese\nRoyapettah3.5 km',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ])),

          // ...................................................................>MedCardMenuEnd
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 360,
                bottom: 20,
              ),
              child: Text(
                'Restaurants with online food delivery in Chennai',
                style:
                    GoogleFonts.b612(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Container(
            height: 1150,
            width: 1150,
            color: Colors.white,
            child: Row(children: [
              Container(
                height: 1500,
                width: 1150,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: image.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 150,
                        childAspectRatio: 2,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.all(1.0),
                          height: 20,
                          child: ListTile(
                            minVerticalPadding: 150,
                            title: Text(
                              title[index],
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Text(
                                subtitle[index],
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(image[index]),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      }),
                ),
              ),
            ]),
          ),
          Container(
            height: 320,
            width: 1150,
            color: Colors.white,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 800),
                child: Container(
                  child: Text(
                    'Best Cuisines Near Me',
                    style: GoogleFonts.abel(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 195,
                width: 1150,
                color: Colors.white,
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 5,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          top: 6,
                        ),
                        child: Container(
                          height: 0,
                          width: 270,
                          child: Center(
                              child: Text(
                            restlist[index],
                            style: TextStyle(fontSize: 16),
                          )),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: Colors.grey),
                              color: Colors.white),
                        ),
                      );
                    }),
              )
            ]),
          ),
          Container(
            height: 550,
            width: double.infinity,
            color: Colors.black,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.only(left: 400, bottom: 200),
                    height: 200,
                    width: 200,
                    child: Title(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Text('Company',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text('About',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey)),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text('Careers',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey)),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text('Teams',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey)),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 60),
                          height: 200,
                          width: 200,
                          child: Title(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Text('Contact us',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white)),
                                  TextButton(
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text('Help & Support',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text('Partner whit us',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text('Ride with us',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey)),
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 200,
                          child: Title(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Text('Legal ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white)),
                                  TextButton(
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text('Terms & conditions',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text('Cookie Policy',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text('Privacy Policy',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey)),
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 70),
                    height: 500,
                    width: 200,
                    child: Title(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Text('We deliver to:',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text('Chennai',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey)),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text('America',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey)),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text('Canada',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey)),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text('Canada',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey)),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text('Canada',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey)),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text('Canada',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey)),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text('Canada',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey)),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ])));
  }
}
//  child: Column(
//                       children: [
             
//                         Padding(
//                           padding: const EdgeInsets.all(15.0),
                         
                        // ),
//                         Padding(
//                           padding: const EdgeInsets.all(15.0),
//                           child: Text('Careers',
//                               style:
//                                   TextStyle(fontSize: 17, color: Colors.grey)),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(15.0),
//                           child: Text('Team',
//                               style:
//                                   TextStyle(fontSize: 17, color: Colors.grey)),
//                         ),
//                       ],
//                     ),
import 'package:flutter/material.dart';


class grid extends StatefulWidget {
  grid({super.key});

  @override
  State<grid> createState() => _funcState();
}

class _funcState extends State<grid> {

  @override

  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 620,
        color: Colors.white,
        child: Column(
          children: [

            SizedBox(height: 40,),
            Center(
              child: Container(
                height: 500,
                width: 350,

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0)
                  , image: DecorationImage( image: AssetImage('../assets/asm.jpg'),fit: BoxFit.cover,
                      filterQuality: FilterQuality.high
                  ) ,
                ),

                child: Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0,380.0),
                        height: 80,
                        width: 50,
                        child: CircleAvatar(backgroundImage: AssetImage('../assets/ben.jpg'),radius: 100,),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 380.0),
                          child: Text('@BenTen_Offcial',style: TextStyle(fontSize: 20,color: Colors.black,
                              fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(90.0, 120.0, 0.0, 0.0),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [


                            IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up)),
                            SizedBox(height: 20,),
                            IconButton(onPressed: (){}, icon: Icon(Icons.thumb_down)),
                            SizedBox(height: 20,),
                            IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
                            SizedBox(height: 20,),
                            IconButton(onPressed: (){}, icon: Icon(Icons.share)),
                            SizedBox(height: 30,),
                            IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo_sharp)),
                          ],
                        ) ,)
                    ],

                  ),

                ),

              ),

            ),

          ],
        ),

      ),


    );

  }
}

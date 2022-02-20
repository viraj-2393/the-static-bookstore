import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),

));

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body:Padding(
        padding: EdgeInsets.all(10.0),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Hi, Rizki',
                        style: TextStyle(color:Colors.black26),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: Text(
                        'Discover Latest Books',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top:5.0),
                      color: Color(0xFFF3F3F3),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Search books...',
                            contentPadding: EdgeInsets.all(10.0),
                            prefixIcon: Icon(Icons.search)
                        ),
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top:20.0),
                      width: 200.0,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'New',
                            style: TextStyle(fontWeight: FontWeight.bold,),
                          ),
                          Text(
                            'Trending',
                            style: TextStyle(color: Colors.black45),
                          ),
                          Text(
                            'Best Seller',
                            style: TextStyle(color: Colors.black45)
                          )
                        ],
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top:20.0),
                      width: 300.0,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child:
                            GestureDetector(
                              onTap:(){
                                Navigator.push(context, Description());
                              },
                              child:Image.asset(
                                'assets/memory.jpg',
                                height: 200.0,
                                fit: BoxFit.fitHeight,
                              )
                            )
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child:Image.asset(
                              'assets/soul.jpeg',
                              height: 200.0,
                              fit: BoxFit.fitHeight
                            )
                          )


                        ],
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top:20.0),
                      child: Text(
                        'Popular',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:20.0,left: 10.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/torn.jpg',
                              height: 150.0,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                    'Torn Apart',
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                      'Paul Clarke',
                                      style: TextStyle(color: Colors.grey)
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                    '\$20',
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),
                                  ),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    )



                  ],
                ),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Icon(
                 Icons.home_filled,
                 color: Colors.deepOrange,
               ),
               Icon(
                 Icons.bookmark
               ),
               Icon(
                 Icons.person,
                 color: Colors.deepOrange,
               )
             ],
           )
          ]
      )
      )
      );

  }
}

class Description extends MaterialPageRoute{
  Description(): super(builder: (BuildContext ctx){
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Description"),
      //   backgroundColor: Colors.deepOrange,
      //   centerTitle: true,
      // ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/quote.jpg',
            height: 450.0,
            fit: BoxFit.fitHeight,
          ),
          Container(
            margin: EdgeInsets.only(left:20.0,top: 20.0),
            child: Text(
              "You're a Miracle",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
            )
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0,top:10.0),
            child: Text(
              "Paul Bernard",
              style: TextStyle(color: Colors.grey)
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0,top:10.0),
            child:Text(
              "\$20",
              style: TextStyle(fontWeight: FontWeight.bold,color:Colors.deepOrange,fontSize: 20.0),
            )
          ),
          Container(
            margin: EdgeInsets.only(top:20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),
                ),
                Text(
                  "Reviews(20)",
                  style: TextStyle(fontSize: 15.0,color:Colors.grey),
                ),
                Text(
                  "Similars",
                  style: TextStyle(fontSize: 15.0,color:Colors.grey),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:10.0,left: 20.0,right: 20.0),
            child: Text(
              "“Holding brain science in one hand and rich emotional presence in the other, this book feels timely and necessary.”—Shauna Niequist, New York Times bestselling author of Present Over PerfectWhy is there such a gap between what you want to do and what you actually do?",
              style: TextStyle(fontSize: 12.0,color: Colors.grey[400]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:10.0,left:20.0,right: 20.0),
            width: double.infinity,
            child: ElevatedButton(
                onPressed: (){
                  //go back to the home page
                  Navigator.pop(ctx);
                },
                child: Text(
                  'Add to Library',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.deepOrange,minimumSize: Size(double.infinity,50.0)),

              )

          )

        ],
      )
      ,
    );
  });
}


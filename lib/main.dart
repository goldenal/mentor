import 'package:flutter/material.dart';

void main() {
  runApp(MyHomepage());
}

class MyHomepage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new FlutterLogo(
          textColor: Colors.pink,
          size: 25.0,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.arrow_back
          ),
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu),
            color: Colors.grey,
          )
        ],
        ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0,-0.40),
                height: 100.0,
                color: Colors.white,
                child: Text('Find a Mentor',
                style: TextStyle(
                  fontSize: 20.0,
                 // fontWeight: FontWeight.bold
                ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey
                    )
                  ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                        child: Text(
                          'YOU HAVE',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0
                          ) ,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                        child: Text(
                          '36K',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0
                          ) ,
                        ),
                      ),
                    ],  

                    ),
                    SizedBox(width: 100.0),
                     Container(
                       height: 50.0,
                       width: 125.0,
                       decoration: BoxDecoration(
                         color: Colors.pink[50]!.withOpacity(0.5),
                         borderRadius: BorderRadius.circular(10.0)
                       ),
                       child: Center(
                         child: Text(
                           'Buy more',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             color: Colors.pink
                           ),

                         ),
                       ),

                     )

                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 40.0,),
          Container(
            padding: EdgeInsets.only(left: 25.0,right: 25.0),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Text('My Mentors',
               style: TextStyle(
                 color: Colors.grey,
                 fontWeight: FontWeight.bold,
                 fontSize: 12.0),
               ),
               Text('View Past Sessions',
                 style: TextStyle(
                     color: Colors.pink,
                     fontWeight: FontWeight.bold,
                     fontSize: 12.0),
               ),
             ],
            ),
          ),
          SizedBox(height: 10.0,),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 2.0,
            shrinkWrap: true,
            primary: false,
            children: <Widget>[
              _buildCard('Adewale', 'Available', 1),
              _buildCard('Tosin', 'Available', 2),
              _buildCard('Dapo', 'Away', 3),
              _buildCard('Akpan', 'Available', 4),
              _buildCard('Delima', 'Away', 5),
              _buildCard('Leke', 'Available', 6),

            ],

          )

        ],

      ),
      );

  }
  Widget _buildCard (String name, String status, int cardIndex){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      elevation: 7.0,
      child: Column(
        children: <Widget>[
          SizedBox(height: 12.0),
          Stack(
            children: <Widget>[
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage('images/im$cardIndex.jpg')
                  )
                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 40.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: status == 'Away' ? Colors.amber:Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0
                  )
                ),
              )

            ],
          ),
          SizedBox(height: 8.0 ),
          Text(
            name,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            status,
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey
            ),
          ),
          SizedBox(height: 15.0),
          Expanded(child: Container(
            width: 175.0,
            decoration: BoxDecoration(
                color: status == 'Away'? Colors.grey : Colors.pink,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)
                )
            ),
            child: Center(
              child: Text(
                'Request',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
          )
        ],
      ),
      margin: cardIndex.isEven ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 10.0, 10.0),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sui_project/about.dart';
import 'Placement.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.red,
      ),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard ({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Dashboard> {
  final List imagesList = [
    'assets/cl1.jpg',
    'assets/cl2.jpg',
    'assets/cl3.jpg',
    'assets/cl4.jpg',

  ];

  _callNumber() async{
    const number = '8959816075'; //set the number here
    var res = await FlutterPhoneDirectCaller.callNumber(number);
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [

              Builder(
                builder: (context) {

                  return GestureDetector(
                      onTap: ()=>Scaffold.of(context).openDrawer(),
                      child: Image.asset('assets/logo.png'));
                },
              ),


              Spacer(),

              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: TextButton.icon(onPressed: _callNumber,
                    icon: Icon(Icons.phone,color: Colors.black,), label: Text('18001007031',style: TextStyle(color: Colors.black ))),
              ),
            ],

            //title: Text("Home",style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.white,

          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(alignment: Alignment.topCenter,
                  child: Text('COLLEGE IMAGES',style: TextStyle(fontSize: 25,color: Colors.redAccent,fontWeight: FontWeight.w700),),),
              ),
              Divider(),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  //height: 300,

                ),
                items: imagesList
                    .map(
                      (item) => Center(
                    child: Image.asset(
                      item,
                      fit: BoxFit.contain,
                      height: MediaQuery.of(context).size.height -100,
                    ),
                  ),
                )
                    .toList(),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      foregroundImage:  AssetImage('assets/uni.png'),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      foregroundImage:  AssetImage('assets/res.jpg'),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      foregroundImage:  AssetImage('assets/courses.png',),
                    ),
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(alignment: Alignment.topCenter,
                  child: Text('OUR RECRUITERS',style: TextStyle(fontSize: 25,color: Colors.redAccent,fontWeight: FontWeight.w700),),),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Image.asset('assets/recruiters.jpg'),
              ),

              Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      )),
                //width: 100,
                //height: 100,
                //color: Colors.black,
                child: Column(

                  children: [
                    SizedBox(height: 20,),
                    Image.asset('assets/logo1.png'),
                    Text('Address:- Kailod Kartal Indore-Dewas By-Pass Road, Indore -452020',style: TextStyle(color: Colors.white,fontSize: 20),),
                    SizedBox(height: 20,),
                ],
              )
              ),
          ]),
          drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
            child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo1.png')),
                color: Colors.black,
              ),
              child: Text(''),

            ),
            ListTile(
              title: const Text('Courses'),
              onTap: () {

                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => placMents(),));
              },
            ),
            ListTile(
              title: const Text('Placements'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => placMents(),));
              },
            ),
            ListTile(
              title: const Text('About Sage'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => About(),));
              },
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
        )
    );
  }
}


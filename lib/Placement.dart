import 'package:flutter/material.dart';
import 'main.dart';
class placMents extends StatelessWidget {
  const placMents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: Icon(Icons.arrow_back,color: Colors.black,),
                onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(),)); },),
              title: Text('Placements',style: TextStyle(color: Colors.black),),
              actions: [
                Image.asset('assets/logo1.png'),
              ],
            ),
          body: ListView(

            children: [
              Image.asset('assets/plasment.png'),
              Image.asset('assets/sage-acca.png'),
              Image.asset('assets/sage-amazon.png'),
              Image.asset('assets/sage-apple-1.png'),
              Image.asset('assets/sage-bfms.png'),
              Image.asset('assets/sage-entrepreneurship.png'),
              Image.asset('assets/sage-google.png'),
              Image.asset('assets/sage-huawei.png'),
              Image.asset('assets/sage-nrdc.png'),
              Image.asset('assets/sage-redhat.png'),
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

            ],

          ),
        )
    );
  }
}

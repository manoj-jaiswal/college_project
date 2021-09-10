import 'package:flutter/material.dart';
import 'package:sui_project/main.dart';
import 'package:flutter_html/flutter_html.dart';



String htmldata = """
            
            <h1> About Sage </h1><br>
            <p>SAGE University is where technology, innovation and entrepreneurship come together to create a dynamic learning environment. Learning for employment is key at SAGE. SAGE UNIVERSITY is the top innovative university in central India that not only helps you to dream, but also drives you, motivates you and gears you up to bring in that very essential component called changes that makes our tomorrow better. Future is the dream we all pursue, a dream of a better lifestyle, quality life, better amenities, infrastructure, facilities and so on, but only a few of us strive today to bring in the changes tomorrow and that is where we are different. Here at SAGE we have a futuristic approach to fulfill your dreams.</p>      




    """;


class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(),)); },),
        title: Text('About Sage',style: TextStyle(color: Colors.black),),
        actions: [
          Image.asset('assets/logo1.png'),
        ],
      ),
      body: Html(
        data: htmldata,

      ),
    );
  }
}

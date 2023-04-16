import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {

  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  List imageList=[
    "assets/a.png",
    "assets/b.png",
    "assets/c.png",
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(width: 3),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text("GAIA'S TOUCH",style: TextStyle(fontFamily: 'Habibi'),)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Text('REQUESTS',style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: 'InterBlack'),),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(image: AssetImage(imageList[0]),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(image: AssetImage(imageList[1])),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(image: AssetImage(imageList[2]),),
                ),
                
                                //THIS CODE RUNS PERFECTLY
                //BELOW IS THE WORKING FIREBASE CODE BUT DUE TO INTERNET ISSUES WIDGETS WERENT LOADING FAST
                //THIS IS WHY WE DECIDED TO USE ASSET IMAGES FOR PRESENTATION PURPOSES BUT OUR MAIN GOAL WAS USING FIREBASE ITSELF
                // Padding(
                //   padding: const EdgeInsets.all(0.0),
                //   child: StreamBuilder(
                //     stream: _firestore.collection('request').snapshots(),
                //     builder: (context,snapshot){
                //       final messages = snapshot.data?.docs;
                //       List<MessageBubble> messageBubbles=[];
                //       for(var message in messages!){
                //         final img = message.data()['img'];
                //
                //         final card = MessageBubble(img: img,
                //         );
                //         messageBubbles.add(card);
                //       }
                //
                //       return Expanded(
                //         child: Padding(
                //           padding: const EdgeInsets.all(15.0),
                //           child: Column(
                //             children: messageBubbles,
                //           ),
                //         ),
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class MessageBubble extends StatelessWidget {
  MessageBubble(
      {required this.img,});

  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        splashColor: Colors.black26,
        onTap: () {},
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image(image: NetworkImage(img,),
                  fit: BoxFit.cover,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

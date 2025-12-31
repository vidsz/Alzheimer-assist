import 'package:flutter/material.dart';  
import 'Contacts.dart';
import 'MyDiary.dart';
import 'PhotoGallery.dart';
import 'Reminders.dart';
import 'AboutMe.dart';
  
void main() => runApp(MyApp());  




class MyApp extends StatelessWidget {  
  final appTitle = 'Alzheimer Assist';
@override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: appTitle,  
      home: MyHomePage( appTitle),  
    );  
  }  
}
  
class MyHomePage extends StatelessWidget {  
  final String title;  
  
  MyHomePage(this.title);  
  static const String imageUrl = 'https://marketplace.canva.com/EAD2962NKnQ/2/0/1600w/canva-rainbow-gradient-pink-and-purple-zoom-virtual-background-_Tcjok-d9b4.jpg';
  static const Widget appName = const Text(
    '                                                          Welcome XYZ\n\n                                   This app will assist you in your daily tasks.\n\n Click on the 3 lines in the top left corner to go to specific sections.\n 1. My Diary - You can write your daily thoughts here.\n 2. Photo Gallery - You can add and view some precious photos.\n 3. About Me - Important information about you and your family can be stored here.\n 4. Contacts - Store all your important and emergency contacts here.\n 5. Reminders - Generate a reminder and get timely notifications. ',
    style: const TextStyle(color: Color.fromARGB(255, 22, 3, 104), fontSize: 28, fontWeight: FontWeight.bold),
  );
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(title: Text(title)),  
       
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
          fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            appName,
          ],
        ),
      ),

  /*@override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(title: Text(title)),  
      body: Center(
        child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/back.jpg"),
              fit: BoxFit.cover)
              ),
              child: Center(child: Text('Set Full Screen Background Image in Flutter', 
                textAlign: TextAlign.center, style: 
                TextStyle(color: Colors.brown, fontSize: 25, fontWeight: FontWeight.bold),),)
               ),
              
            
         /*Text(  
          '                                                   Welcome XYZ \nThis app will assist you in your daily tasks. It has the following features:'  , 
       
          style: TextStyle(fontSize: 20.0),  
          )*/  
      ),  */
      drawer: Drawer(  
        child: ListView(  
          // Important: Remove any padding from the ListView.  
          padding: EdgeInsets.zero,  
          children: <Widget>[  
            UserAccountsDrawerHeader(  
              accountName: Text("Vidhi Mehta"),  
              accountEmail: Text("vidhismehta2@gmail.com"),  
              currentAccountPicture: CircleAvatar(  
                backgroundColor: Colors.orange,  
                child: Text(  
                  "V",  
                  style: TextStyle(fontSize: 40.0),  
                ),  
              ),  
            ),  
            ListTile(  
              leading: Icon(Icons.home), title: Text("Home"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
           
            ListTile(  
              leading: Icon(Icons.article_outlined), title: Text("My Diary"),  
              onTap: () {  
               Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const Diary()),
  );  
              },  
            ), 

            ListTile(  
              leading: Icon(Icons.photo_album), title: Text("Photo Gallery"),  
              onTap: () {  
                Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const Gallery()),
  );  
              },  
            ),
            ListTile(  
              leading: Icon(Icons.person), title: Text("About Me"),  
              onTap: () {  
               Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const AboutMe()),
  );  
              },  
            ),
            
            ListTile(  
              leading: Icon(Icons.contacts), title: Text("Contacts"),  
              onTap: () {  
               Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const Contacts()),
  );  
              },  
            ), 

            ListTile(  
              leading: Icon(Icons.check_box), title: Text("Reminders"),  
              onTap: () {  
                Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const Reminders()),
  );  
              },  
            ), 
          ],  
        ),  
      ),  
    );  
  }  
}




import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello BMC Flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello BMC Flutter"),
              backgroundColor: Colors.orange,
            ),
            body: Builder(
                builder: (context) => Center(
                        child: Column(children: [
                      Text(
                        'Bossing!',
                        style: TextStyle(
                            fontSize: 46,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900]),
                      ),
                      Text(
                        'kamusta ang buhay buhay?',
                        style: TextStyle(
                            fontSize: 20, color: Colors.deepPurpleAccent),
                      ),
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUWIncXI5vSSiypVSkGTQ6Q_F6mUR-iuEYpQ&s',
                        height: 350,
                      ),
                      ElevatedButton(
                        child: Text('Contact Us'),
                        onPressed: () => contactUs(context),
                      )
                    ])))));
  }
} // end line of my class

void contactUs(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Contact us'),
        content: Text('Mail us at hello@world.com'),
        actions: <Widget>[
          TextButton(
            child: Text('close'),
            onPressed: () => Navigator.of(context).pop(),
          )
        ], // action
      ); // return
    }, // builder
  ); //showdialog
} //void contactus

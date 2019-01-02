import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
   /*   body: Center(
        child: RaisedButton(
          child: Text('Launch screen'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
        ),
      ),*/
   body: ListView(
     children: <Widget>[
       ListTile(
         leading: Icon(Icons.apps),
         title: Text('Next Screen'),
         onTap: (){
           Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => SecondScreen()),
           );
         },

       ),
       ListTile(
         leading: Icon(Icons.beach_access),
         title: Text('Raining'),
         onTap: (){
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => SecondScreen()),
           );
         },

       ),
       ListTile(
         leading: Icon(Icons.wb_sunny),
         title: Text('Sunny'),
         onTap: (){
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => SecondScreen()),
           );
         },

       )

     ],
   ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Go to third screen?'),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdScreen()),
              );
            },

          ),
          ListTile(
            title: Text('Or go back?'),
            onTap:  () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}


class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

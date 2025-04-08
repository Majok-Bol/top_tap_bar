import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Side menu',style: TextStyle(color: Colors.white,fontSize: 25),),centerTitle: true,backgroundColor: Colors.purple,),
        drawer:Container(
          padding: EdgeInsets.all(0),
          width: 190,
          // height: 80,
          child: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text('Menu'),
            ),
            ListTile(title: Text('Home'),onTap: (){
              Navigator.pop(context);
            },),
            ListTile(title: Text('Settings'),onTap: (){
              Navigator.pop(context);
            },),
            ListTile(title: Text('Logout'),onTap: (){
              Navigator.pop(context);
            },),
            ListTile(title: Text('My Account'),onTap: (){
              Navigator.pop(context);
            },),
          ],
        ),
      ),
        ),
        body: const Center(child: Text('Main Content')),
      ),
    );
  }
}
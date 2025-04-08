import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Side menu',style: TextStyle(color: Colors.white,fontSize: 25),),centerTitle: true,backgroundColor: Colors.purple,),
        drawer:Drawer(
          child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text('Menu'),
            ),
            ListTile(title: Text('Home'),),
            ListTile(title: Text('Settings'),),
            ListTile(title: Text('Logout'),),
            ListTile(title: Text('My Account'),),
          ],
        ),
        ),
        body:ListView.builder(
          itemCount: 40,
          itemBuilder: (context,index){
            return ListTile(
              title: Text('Item: ${index+1}'),
            );
          }),
      ),
    );
  }
}
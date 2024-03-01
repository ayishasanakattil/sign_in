import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('sign in',style: TextStyle(color: Colors.red,fontSize: 30),),
        ),

      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 200,right: 200),
                child: SizedBox(height:10),
              ),
              TextField(
                obscureText: false,
                decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'email_adress'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200,right: 200),
                child: SizedBox(height: 20),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'password'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200,right: 200),
                child: SizedBox(height: 40,),
              ),
              ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.red,fixedSize:Size(250, 50) ),onPressed: (){}, child: Text('login',style: TextStyle(color: Colors.white),)),
              Text('or',style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 10,),
              ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.blue,fixedSize:Size(250, 50) ),onPressed: (){}, child: Text('facebook login',style: TextStyle(color: Colors.white),)),

          ],),
        ),
      ),
       )


    );
  }
}


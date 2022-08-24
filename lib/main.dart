

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController aEditingController = TextEditingController();
  TextEditingController bEditingController = TextEditingController();


  double numberA=0;
  double numberB=0;
  double numberC=0;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Demo Home Page', style: TextStyle(color: Colors.white),),
        ),

        body: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width/3,
              height: 70,
              child:
              Row(crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: aEditingController,
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    ),),
                const SizedBox(width: 50,),

                Expanded(
                  child: TextField(
                    controller: bEditingController,
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                  ),),
                const SizedBox(width: 50,),

                Text('結果：$numberC',)
              ],
              ),
            ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                  onPressed:(){
                    //足算
                    setState(() {

                      double numberA = double.parse(aEditingController.text);
                      double numberB = double.parse(bEditingController.text);

                      numberC=(numberA + numberB);

                    });
                    }, child: const Text('+',style: TextStyle(color: Colors.white),),
              ),
              const SizedBox(width: 40,),

              ElevatedButton(
                onPressed: (){
                //引き算
                  setState(() {

                  double numberA = double.parse(aEditingController.text);
                  double numberB = double.parse(bEditingController.text);

                  numberC=(numberA-numberB);

                  });
                  }, child: const Text('-',style: TextStyle(color: Colors.white),),
              ),
              const SizedBox(width: 40,),


              ElevatedButton(
                  onPressed: (){
                    setState(() {

                      double numberA = double.parse(aEditingController.text);
                      double numberB = double.parse(bEditingController.text);

                      numberC=(numberA*numberB);

                    });
                    }, child: const Text('×',style: TextStyle(color: Colors.white),),
              ),
              const SizedBox(width: 40,),

              ElevatedButton(
                  onPressed: (){
                    setState(() {

                      double numberA = double.parse(aEditingController.text);
                      double numberB = double.parse(bEditingController.text);

                      numberC=(numberA/numberB);

                    });
                    }, child: const Text('÷',style: TextStyle(color: Colors.white),),
              ),
              const SizedBox(width: 40,),
            ],),

          ],
        ),
    );
  }
}
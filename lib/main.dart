import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tsak_6/page1/Call_Bar.dart';
import 'package:tsak_6/page1/NumPadData.dart';
import 'package:tsak_6/page1/Numbers_Pad.dart';
import 'package:tsak_6/page1/addContact.dart';
import 'package:tsak_6/page2/ContactCard.dart';
import 'package:tsak_6/page2/MyListContacts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'uni-coding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

String number = '';
List<String> myNumbers=[];

class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent
          ),
          backgroundColor: const Color(0xfffefdff),
          elevation: 0,
          toolbarHeight: 50,
        ),
        backgroundColor: const Color(0xfffefdff),

        body: Container(
          width: 500,
          height: 850,
          margin: const EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(number, style: const TextStyle(
                color: Color(0xff585677),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              const MyAddButton(),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: NumbersModel.button1.map((e) => OnlyNum(data: e, onTab: (x){
                      NumbersModel.selectedNum = x;
                      setState(() {});
                    },)).toList()
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: NumbersModel.button4.map((e) => OnlyNum(data: e, onTab: (x){
                      NumbersModel.selectedNum = x;
                      setState(() {});
                    })).toList()
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: NumbersModel.button7.map((e) => OnlyNum(data: e, onTab: (x){
                      NumbersModel.selectedNum = x;
                      setState(() {});
                    })).toList()
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: NumbersModel.button0.map((e) => OnlyNum(data: e, onTab: (x){
                      NumbersModel.selectedNum = x;
                      setState(() {});
                    })).toList()
                ),
                ],
              ),
              CallBar(backSpace: (){
                number = number.substring(0,number.length-1);
                setState(() {});
              },),
            ],
          ),
        )
    );
  }
}

class MyHomePage2 extends StatelessWidget{
  const MyHomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent
          ),
          backgroundColor: const Color(0xfffefdff),
          elevation: 0,
          toolbarHeight: 50,
        ),
        backgroundColor: const Color(0xfffefdff),

        body: Column(
          children: [
            const BackCard(),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: ContactCard(),
            ),
            Expanded(
              child: Stack(
                children: [
                  const Expanded(child: ListContacts()),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 25),
                      width: 180,
                      height: 70,
                      decoration: const BoxDecoration(
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 20),
                            blurRadius: 15,
                            spreadRadius: 10
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: (){},
                            child: const Icon(Icons.groups_outlined, color: Colors.black87, size: 30,),),
                          TextButton(
                            onPressed: (){},
                            child: const Icon(Icons.settings, color: Colors.black87, size: 25,),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
    );
  }
}

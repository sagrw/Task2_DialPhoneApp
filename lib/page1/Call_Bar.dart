
import 'package:flutter/material.dart';
import '../main.dart';

class CallBar extends StatelessWidget {

  final Function backSpace;
  const CallBar({
    Key? key, required this.backSpace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage2()));
            },
            child: const Icon(Icons.groups_outlined, color: Color(0xff585677), size: 35,),
          ),
          TextButton(
            onPressed: (){},
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xff08DF78),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(Icons.call, color: Color(0xffF7FEF9),),
            ),
          ),
          TextButton(
            onPressed: (){
              backSpace();
            },
            child: const Icon(Icons.backspace_outlined, color: Color(0xff585677), size: 30,),
          ),
        ],
      ),
    );
  }
}

// TextButton(onPressed: (){
//   Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage2()));
// },
//   child: const Icon(Icons.next_plan),)
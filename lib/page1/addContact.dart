
import 'package:flutter/material.dart';
import '../main.dart';

class MyAddButton extends StatelessWidget {
  const MyAddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: TextButton(onPressed: (){
        myNumbers.add(number);
      },
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(15),
              minimumSize: const Size(0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.add, size: 18, color: Color(0xff08DF78)),
              Text('Add to contacts', style: TextStyle(
                  color: Color(0xff08DF78), fontSize: 15, fontWeight: FontWeight.bold
              ),)
            ],
          )),
    );
  }
}

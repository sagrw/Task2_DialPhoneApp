
import 'package:flutter/material.dart';

class SettingContainer extends StatelessWidget {
  const SettingContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
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
    );
  }
}

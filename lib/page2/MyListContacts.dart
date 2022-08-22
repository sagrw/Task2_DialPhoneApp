
import 'package:flutter/material.dart';

import '../main.dart';

class ListContacts extends StatelessWidget {
  const ListContacts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: myNumbers.map((e) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.person_rounded, color: Colors.black, size: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Ali Hider', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                    Text(e, style: const TextStyle(color: Colors.black, fontSize: 15),),
                  ],
                ),
              ),const Spacer(),
              TextButton(
                  onPressed: (){},
                  child: const Icon(Icons.call, color: Color(0xff08DF78), size: 25,)
              )
            ],
          ),
        )).toList()
    );
  }
}
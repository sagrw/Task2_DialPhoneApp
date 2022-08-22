
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Contacts', style: TextStyle(
          color: Color(0xff2E2D4D),
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),const Spacer(),

        TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: const Size(0, 0),
          ),
          child: const Icon(Icons.apps, color: Color(0xffB6B4BE), size: 30,),
        ),
        TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: const Size(0, 0),
          ),
          child: const Icon(Icons.view_agenda_outlined, color: Color(0xff2E2D4D), size: 30,),
        ),
      ],
    );
  }
}


class BackCard extends StatelessWidget {
  const BackCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        },
            child: const Icon(Icons.arrow_back_ios, size: 20, color: Color(0xff2E2D4D),))
      ],
    );
  }
}
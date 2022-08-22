
import 'package:flutter/material.dart';
import 'package:tsak_6/main.dart';
import 'NumPadData.dart';


// class NumPad extends StatefulWidget {
//   const NumPad({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<NumPad> createState() => _NumPadState();
// }
//
// class _NumPadState extends State<NumPad> {
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }


class OnlyNum extends StatefulWidget {

  final NumbersModel data;
  final Function onTab;

  const OnlyNum({
    Key? key, required this.data, required this.onTab,
  }) : super(key: key);

  @override
  State<OnlyNum> createState() => _OnlyNumState();
}

class _OnlyNumState extends State<OnlyNum> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          widget.onTab(widget.data.num);
          number = number + widget.data.num;
          setState(() {});
        },
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
              children: [
                Text(widget.data.num, style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff585677)
                ),),
                Text(widget.data.litter, style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xffDEDEE2)
                ),),
              ]
          ),
        )
    );
  }
}
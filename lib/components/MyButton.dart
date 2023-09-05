import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final VoidCallback onpress;
final String title;
 final Color color;
  const MyButton({Key? key
    ,required this.title , this.color =const Color(0xffa5a5a5),required this.onpress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,color:Colors.orangeAccent ,
            ),
            child: Center(
              child: Text(
                  title,style: TextStyle(fontSize: 20,color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
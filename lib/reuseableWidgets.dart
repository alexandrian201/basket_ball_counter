import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key ,
  required this.text,
  this.ontap,
  this.width =165,
  this.TSize =25,
  });
  String text;
  double? TSize;
  double width;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Expanded(
        flex: 1,
          child:Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                width:width,
                height:45,
                decoration: const BoxDecoration(
                borderRadius:  BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(244, 248, 135, 6),
                  Color.fromARGB(255, 202, 214, 202),
                  Color.fromARGB(244, 248, 135, 6),
                  Color.fromARGB(244, 255, 174, 82),
                  Color.fromARGB(255, 239, 246, 239)])
                ),
                child : Center(child:Text(text,style: TextStyle(
                          fontSize: TSize,
                          color: Colors.black87,
                        ),))
              ),
            ),
      )
      ,
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: const BoxDecoration(
                borderRadius:  BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(244, 253, 148, 29),
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(244, 255, 175, 83),
                  Color.fromARGB(244, 255, 174, 82),
                  Color.fromARGB(255, 255, 255, 255)])
                ),
                height: 60,
                child: const Center(
                  child: Text("Points Counter",style: TextStyle(
                    color: Colors.black,fontSize: 40),),
                ),
                      ),
            );
  }
}
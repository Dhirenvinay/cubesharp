
import 'package:cubeassignment/ddatabase.dart';
import 'package:cubeassignment/item_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestionList extends StatefulWidget {
   SuggestionList(this.title, this.hotel, {Key? key}) : super(key: key);
String? title;
   List<Hotel> hotel;
  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       Container(
         height: 150.0,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10.0),

         ),
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: widget.hotel.length,
    itemBuilder: (context, index) =>  Container(
    //margin: EdgeInsets.only(bottom: 10.0),
    child: Container(
    child: ItemCard(widget.hotel[index], () {

    }
    ),
    ),
    ),
    ),
       ),
     ],
   );
  }
}

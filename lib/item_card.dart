import 'package:cubeassignment/ddatabase.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
   ItemCard(this.hotel, this.onTap,{Key? key}) : super(key: key);
Hotel hotel;
Function()? onTap;
  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
  return Container(
    width: 100.0,
    //margin: EdgeInsets.only(right: 20.0),
    decoration: BoxDecoration(
      color: const Color(0xfcf9f8),
      borderRadius:BorderRadius.circular(8.0),
    ),
    child: InkWell(
      onTap: widget.onTap,
      child: Padding(padding: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
                //  color: Colors.grey.shade200,
              image: DecorationImage(image: NetworkImage(widget.hotel.image!),
                fit: BoxFit.cover,
              )
            ),
          ),
          Center(
            child: Text(widget.hotel.title!,
            style: const TextStyle( color: Colors.black,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            ),
            ),
          ),

        ],
      ),
      )

    ),

  );
  }
}

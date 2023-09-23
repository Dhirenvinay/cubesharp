import 'package:cubeassignment/floatedbutton.dart';
import 'package:cubeassignment/suggestion_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'ddatabase.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
        Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: MediaQuery.of(context).size.width/2.5,),
          //Center(child:
            const Text("Purva",style: TextStyle(color: Colors.orangeAccent, fontSize: 20,fontWeight: FontWeight.bold),),//),
            const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search,color: Colors.black,)),
        ],),

        Container(
          margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
          height: MediaQuery.of(context).size.height / 5,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.blue,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              "assets/icons/slogan.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
          const SizedBox(height: 15,),

          const Text("Categories",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
        SuggestionList("", Hotel.recommendation),

        Expanded(

          child: Container(
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset:const Offset(0, 3),
                ),
              ],
                color: Colors.white,
            ),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Hotel.recommendation.length,
              itemBuilder: (context, index) => Container(
               height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                ),
                child: GridView(
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 3.2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  children: [
                    for (final category in Hotel.recommendation)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Container(
                          width: double.infinity,
                          height: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                               color: Colors.grey.shade200,
                              image: DecorationImage(image: NetworkImage(category.image!),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text("${category.title}",style: const TextStyle(fontSize: 15,),),
                        const SizedBox(height: 5,),
                        Text("Rs.${category.price}",style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        Container(
                          width: 60,
                            color: Colors.green,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${category.rate}",style: const TextStyle(color: Colors.white),),
                                const SizedBox(width: 5,),
                                const  Icon(Icons.star,color: Colors.white,)
                              ],
                            )),
                      ],)
                  ],
                ),
              ),
            ),
          ),
        ),

      ],),

      floatingActionButton: MyFloatingActionButton(),

       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Chart',
          ),
          BottomNavigationBarItem(
            icon: Icon(null),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tab),
            label: 'Tab',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.black,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),

    );
  }
}

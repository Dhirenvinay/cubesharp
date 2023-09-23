
import 'package:cubeassignment/bottomsheet.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
   const LoginScreen({Key? key}) : super(key: key);


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _phoneNumberController = TextEditingController();
//  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      resizeToAvoidBottomInset: false,
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
          height: MediaQuery.of(context).size.height/4,
        ),
          const Text("Login",style: TextStyle( color: Colors.white, fontSize: 30),),
          const SizedBox(height: 10,),
          const Text("Welcome Back",style: TextStyle( color: Colors.white, fontSize: 25),),
          const SizedBox(
          height: 20,
        ),
        // Expanded(
        //     child:
    Expanded(

      child: Container(
        // height: double.infinity,
        //         width: do,

                //width: 200,
               // color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)
                      .copyWith(
                    bottomRight: Radius.zero,bottomLeft: Radius.zero
                   // topRight: Radius.zero, topLeft: Radius.zero
                  )
                ),
        child: Column(children: [
          const SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 100),
            child: SizedBox(
             // color: Colors.white,
              height: MediaQuery.of(context).size.height/6,
              //width: MediaQuery.of(context).size.width,
              width: double.infinity,
              // decoration: BoxDecoration(
              //   borderRadius: Border
              // ),
              // decoration: BoxDecoration(
              //   color: Colors.blue
              // ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0,3 ),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                //elevation: 10.0,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const  Text("Enter Phone Number",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                    Row(
                      children: [
                       // Padding(
                         // padding: const EdgeInsets.only(left: 8),
                        //  child:
                          SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/icons/india.png")),
                        //),
                        const   Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("+91"),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TextField(
                              controller: _phoneNumberController,
                              keyboardType: TextInputType.phone,
                              decoration:const InputDecoration(
                                hintText: 'Enter phone number',

                            //    prefixIcon: Icon(Icons.phone),
                              ),
                              onChanged: (value) {
                              },
                            ),
                          ),
                        ),

                      ],
                    ),


                  ],),
                ),
              ),
            ),
          ),
          //SizedBox(height: 20,),
          Center(
            child: InkWell(
              onTap: () {
                if(_phoneNumberController.text == "9818409565") {
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30)),
                    ),

                    builder: (BuildContext context) {
                      return const MyBottomSheet(); // Your existing MyBottomSheet widget
                    },
                  );
                }
                else {
                  final snackBar = SnackBar(
                    content:const Text("Enter a registered number"),
                    duration: const Duration(seconds: 2),
                    // Optional: Set the duration
                    action: SnackBarAction(
                      label: 'Action',
                      onPressed: () {
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              splashColor: Colors.blue,
              child: Container(
                height: MediaQuery.of(context).size.height/15,
                width: MediaQuery.of(context).size.width/3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent

                ),
                // child: GestureDetector(
                //   onTap: () {},
                child: const Center(child: Text("Proceed",style: TextStyle( fontSize: 20,color: Colors.white),)),
                //),
              ),
            ),
          ),
        ],),
              ),
    )
        //)

      ],),

    );
  }
}
